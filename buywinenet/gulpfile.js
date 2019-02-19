// 引用模块: require();  得到一个对象/函数
// gulp

//es6转es5
let gulp = require('gulp');
//引包：require() 
let babel = require('gulp-babel');

gulp.task('es6',function(){
	gulp.src('js/*.js')
	.pipe(babel({
		'presets':['es2015']
	}))
	.pipe(gulp.dest('buywinenet/dist/es5/'))
});

// let pump = require('pump');
// let concat = require('gulp-concat');//合并
// let rename = require('gulp-rename');//重命名
// js压缩
// //引包：require() 
let uglify = require('gulp-uglify');
gulp.task('uglify',function(){
  return gulp.src('buywinenet/dist/es5/*.js')
         .pipe(uglify())
         // .pipe(rename('es5-indexjs.min.js'))
         .pipe(gulp.dest('buywinenet/dist/js'));
});

//压缩css
let cssmin=require('gulp-cssmin');
// //引包：require() 
gulp.task('cssmin',function(){
  return gulp.src('css/*.css')
         .pipe(cssmin())
         // .pipe(rename('index.min.css'))
         .pipe(gulp.dest('buywinenet/dist/css'));
});

//压缩图片
let imagemin=require('gulp-imagemin');
// //引包：require() 
gulp.task('imgmin',function(){
  return gulp.src('img/*')
         .pipe(imagemin())
         .pipe(gulp.dest('buywinenet/dist/img'));
});

//参数
var opt = {
  removeComments: true,//清除HTML注释
  collapseWhitespace: true,//压缩HTML
  collapseBooleanAttributes: true,//省略布尔属性的值 <input checked="true"/> ==> <input checked />
  removeEmptyAttributes: true,//删除所有空格作属性值 <input id="" /> ==> <input />
  removeScriptTypeAttributes: true,//删除<script>的type="text/javascript"
  removeStyleLinkTypeAttributes: true,//删除<style>和<link>的type="text/css"
  minifyJS: true,//压缩页面JS
  minifyCSS: true//压缩页面CSS
};

//压缩html html文件夹文件
//引包：require() 
var htmlmin = require('gulp-htmlmin')

gulp.task('htmlmin',function(){
   gulp.src('html/*.html')
     .pipe(htmlmin(opt))
     .pipe(gulp.dest('buywinenet/dist/html'));
});

//压缩index.html
//引包：require() 
var htmlminindex = require('gulp-htmlmin')

gulp.task('htmlminindex',function(){
   gulp.src('index.html')
     .pipe(htmlmin(opt))
     .pipe(gulp.dest('buywinenet/dist'));
});


gulp.task('api',function() {
	return gulp.src('api/*.php').pipe(gulp.dest('buywinenet/dist/api'));
});

gulp.task('lib',function() {
	return gulp.src('lib/*.js').pipe(gulp.dest('buywinenet/dist/lib'));
});


//开始任务  按依赖任务顺序执行
gulp.task('default',['es6','uglify','cssmin','imgmin','htmlmin','htmlminindex','api','lib'],function(){
  console.log('亚索成功啦！');
});