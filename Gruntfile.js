module.exports = function (grunt) {
    require('load-grunt-tasks')(grunt);

    grunt.initConfig({
        pkg: grunt.file.readJSON('package.json'),
        copy: {
            images: {
                files: [
                    {
                        expand: true,
                        cwd: 'src/images',
                        src: ['**/*.*'],
                        dest: 'site/themes/staticfy/assets/images'
                    }
                ]
            },
            leaflet: {
                files: [
                    {
                        expand: true,
                        cwd: 'node_modules/leaflet/dist',
                        src: ['leaflet.css'],
                        dest: 'site/themes/staticfy/assets/css'
                    },
                    {
                        expand: true,
                        cwd: 'node_modules/leaflet/dist',
                        src: ['leaflet.js', 'leaflet.js.map'],
                        dest: 'site/themes/staticfy/assets/js'
                    },
                    {
                        expand: true,
                        cwd: 'node_modules/leaflet/dist',
                        src: ['*.png'],
                        dest: 'site/themes/staticfy/assets/images'
                    }
                ]
            }
        },
        postcss: {
            options: {
                map: true,
                processors: [
                    require('tailwindcss')(),
                    require('autoprefixer')()
                ]
            },
            theme: {
                expand: true,
                cwd: 'src/css',
                src: ['**/*.css'],
                dest: 'site/themes/staticfy/assets/css/'
            }
        },
        shell: {
            build: {
                cwd: './site',
                command: 'nikola build'
            },
            clean: {
                cwd: './site',
                command: 'nikola clean'
            },
            serve: {
                cwd: './site',
                command: 'nikola serve -p 8001'
            },
            deploy: {
                cwd: './site',
                command: 'nikola deploy'
            }
        },
        watch: {
            postcss: {
                files: 'src/css/**/*.css',
                tasks: ['postcss:theme', 'shell:build'],
                options: {
                    interrupt: true
                }
            },
            nikola: {
                files: ['pages/**/*', 'posts/**/*', 'themes/**/*'],
                tasks: ['postcss:theme', 'shell:build'],
                options: {
                    interrupt: true
                }
            }
        }
    });

    grunt.registerTask('default', ['watch']);
    grunt.registerTask('build', ['copy', 'postcss:theme', 'shell:build']);
    grunt.registerTask('clean', ['shell:clean']);
    grunt.registerTask('serve', ['build', 'shell:serve']);
    grunt.registerTask('rebuild', ['shell:clean', 'build']);
    grunt.registerTask('deploy', ['build', 'shell:deploy']);
};