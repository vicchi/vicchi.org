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
            },
            dist: {
                expand: true,
                cwd: 'src/css',
                src: ['**/*.css'],
                dest: '../vicchi.org/site/public/assets/css/'
            }
        },
        shell: {
            build: {
                command: 'nikola build'
            },
            clean: {
                command: 'nikola clean'
            }
        },
        watch: {
            postcss: {
                files: 'src/css/**/*.css',
                tasks: ['postcss:dist'],
                options: {
                    interrupt: true
                }
            },
            nikola: {
                files: ['pages/**/*', 'posts/**/*', 'themes/**/*'],
                tasks: ['shell:build', 'postcss:dist'],
                options: {
                    interrupt: true
                }
            }
        }
    });

    grunt.registerTask('default', ['watch']);
    grunt.registerTask('build', ['copy', 'postcss:theme', 'shell:build', 'postcss:dist']);
    grunt.registerTask('rebuild', ['shell:clean', 'build']);
};