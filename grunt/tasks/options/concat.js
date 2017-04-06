module.exports = {
	i18n: {
		options: {
			banner: 'define([\'angular\'], function (angular) {\n',
			footer: '\n});'
		},
		files: [{
			src: './../Kovka/src/main/webapp/locale/angular-locale*.js',
			dest: './../Kovka/src/main/webapp/static/generated/locale',
			expand: true,
			flatten: true
		}]
	}
};