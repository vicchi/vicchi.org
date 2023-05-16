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
                command: 'nikola serve'
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
    grunt.registerTask('serve', ['shell:serve']);
    grunt.registerTask('rebuild', ['shell:clean', 'build']);
};