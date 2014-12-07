---
layout: post
title:  "Welcome to Jekyll!"
date:   2014-12-06 22:57:23
categories: jekyll update
---
You’ll find this post in your `_posts` directory. Go ahead and edit it and re-build the site to see your changes. You can rebuild the site in many different ways, but the most common way is to run `jekyll serve`, which launches a web server and auto-regenerates your site when a file is updated.

To add new posts, simply add a file in the `_posts` directory that follows the convention `YYYY-MM-DD-name-of-post.ext` and includes the necessary front matter. Take a look at the source for this post to get an idea about how it works.

Jekyll also offers powerful support for code snippets:

{% highlight ruby %}
def print_hi(name)
	puts "Hi, #{name}"
end
print_hi('Tom')
#=> prints 'Hi, Tom' to STDOUT.
{% endhighlight %}

{% highlight lua %}
local function setVersionData()
	local modItem = ModsUtil.findModItemByModName(courseplay.modName);
	if modItem and modItem.version then
		courseplay.version = modItem.version;
	end;

	if courseplay.version then
		local versionSplitStr = Utils.splitString('.', courseplay.version); -- split as strings
		versionSplitStr[3] = versionSplitStr[3] or '0000';
		courseplay.versionDisplayStr = string.format('v%s.%s\n.%s', versionSplitStr[1], versionSplitStr[2], versionSplitStr[3]); --multiline display string
		courseplay.isDevVersion = tonumber(versionSplitStr[3]) > 0;
		if courseplay.isDevVersion then
			courseplay.versionDisplayStr = courseplay.versionDisplayStr .. '.dev';
		end;
		courseplay.versionFlt = tonumber(string.format('%s.%s%s', versionSplitStr[1], versionSplitStr[2], versionSplitStr[3]));
	else
		courseplay.version = ' [no version specified]';
		courseplay.versionDisplayStr = 'no\nversion';
		courseplay.versionFlt = 0.00000;
		courseplay.isDevVersion = false;
	end;
end;
{% endhighlight %}

{% highlight xml %}
<?xml version="1.0" encoding="utf-8" standalone="no" ?>
<modDesc descVersion="20">
	<version>4.00.0162</version>
	<author><![CDATA[Courseplay Dev Team]]></author>
	<title>
		<en>Courseplay</en>
	</title>
</modDesc>
{% endhighlight %}

Check out the [Jekyll docs][jekyll] for more info on how to get the most out of Jekyll. File all bugs/feature requests at [Jekyll’s GitHub repo][jekyll-gh]. If you have questions, you can ask them on [Jekyll’s dedicated Help repository][jekyll-help].

[jekyll]:      http://jekyllrb.com
[jekyll-gh]:   https://github.com/jekyll/jekyll
[jekyll-help]: https://github.com/jekyll/jekyll-help
