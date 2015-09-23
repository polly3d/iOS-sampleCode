# Hello world
这是苹果官方网站的第一个例子，功能是当在文本输入框输入内容后，点击键盘return键，即可在label标签中显示内容。

# 主要知识点

* 一般都在ViewController的viewDidLoad中初化相应的内容。
* 要使用键盘响应事件，必要要实现相应的protocol。在这里，是实现UITextFieldDelegate。从而重写textFieldShouldReturn：方法。
* storyboard在绑定相应的组件到ViewController时，需要将组件的delegate设置为ViewController。

# 当时出现的错误

由于苹果官方网站这个源码是N年以前的，所以没有指定组件（UITextField)的delegate。导致一直按返回都没有效果。所以在storyboard中一定要指定。如果代码中指定的话，比如：textfield.delegate = self。则会出现警告信息，强引用了。

# 有图有真相

最后，应该是要上一张效果图。

![截图](https://github.com/polly3d/iOS-sampleColde/raw/master/img1.png)