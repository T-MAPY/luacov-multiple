return [[
<!doctype html>
<html lang="en">
<head>
    <title>Code coverage report for {{filename}}</title>
    <meta charset="utf-8" />
    <style>{{{css}}}</style>
</head>
<body>
    <div class='wrapper'>
        <div>
            <h1>
                <a href="{{{link.root}}}">All files</a> /
                <a href="{{{link.package}}}">{{path}}</a> / {{basename}}
            </h1>
            <div>
                <div class="stats">
                    <span class="strong">{{{rateFormatted}}}%</span>
                    <span class="quiet">Rate</span>
                </div>
                <div class="stats">
                    <span class="strong">{{{hits}}}</span>
                    <span class="quiet">Hits</span>
                </div>
                <div class="stats">
                    <span class="strong">{{{miss}}}</span>
                    <span class="quiet">Missed</span>
                </div>
            </div>
            <div class='status' data-status="{{status}}"></div>
        </div>
        <div class="main">
            <div class="numbers">
                {{#lines}}
                <div class="line">{{number}}</div>
                {{/lines}}
            </div>
            <div class="hits">
                {{#lines}}
                <div class="line" data-hits="{{hits}}">{{hitsText}}</div>
                {{/lines}}
            </div>
            <div class="code">
                {{#lines}}
                <div class="line" data-hits="{{hits}}">{{line}}&#8203;</div>
                {{/lines}}
            </div>
        </div>
        <div class="footer quiet">Code coverage generated by <a href="https://keplerproject.github.io/luacov/" target="_blank">LuaCov</a> at {{datetime}}</div>        
    </div>
</body>
</html>
]]