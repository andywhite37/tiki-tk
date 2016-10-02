import doom.core.VNode;
import doom.core.VNodes;
import Tiki.*;
import js.Browser.*;

class App extends doom.html.Component<{}> {
  override function render(): VNode {
    return article([
      demoSection("Typography", [
        h1("h1 heading"),
        fillerText(),
        h2("h2 heading"),
        fillerText(),
        h3("h3 heading"),
        fillerText(),
        h4("h4 heading"),
        fillerText(),
        h5("h5 heading"),
        fillerText(),
        h6("h6 heading"),
        fillerText(),
      ]),
      demoSection("Buttons", [
        inlineExample([button("Default")]),
        inlineExample([button("Primary").style(Primary)]),
        inlineExample([button("Success").style(Success)]),
        inlineExample([button("Warning").style(Warning)]),
        inlineExample([button("Danger").style(Danger)]),
      ]),
      demoSection("Hollow Buttons", [
        inlineExample([button("Default").hollow()]),
        inlineExample([button("Primary").style(Primary).hollow()]),
        inlineExample([button("Success").style(Success).hollow()]),
        inlineExample([button("Warning").style(Warning).hollow()]),
        inlineExample([button("Danger").style(Danger).hollow()]),
      ]),
      demoSection("Disabled Buttons", [
        inlineExample([button("Default").disabled()]),
        inlineExample([button("Primary").style(Primary).disabled()]),
        inlineExample([button("Success").style(Success).disabled()]),
        inlineExample([button("Warning").style(Warning).disabled()]),
        inlineExample([button("Danger").style(Danger).disabled()]),
      ]),
      demoSection("Basic Nav", [
        nav([
          navLink({ href: "#" }, "Foo"),
          navLink({ href: "#" }, "Bar"),
          navLink({ href: "#" }, "Baz")
        ]).orientation(Inline)
      ]),
      demoSection("Nav Tabs", [
        nav([
          navLink({ active: true, href: "#" }, "Foo"),
          navLink({ href: "#" }, "Bar"),
          navLink({ href: "#" }, "Baz")
        ]).orientation(Inline).style(Tabs)
      ]),
      demoSection("Nav Pills", [
        nav([
          navLink({ href: "#" }, "Foo"),
          navLink({ active: true, href: "#" }, "Bar"),
          navLink({ href: "#" }, "Baz")
        ]).orientation(Inline).style(Pills)
      ]),
      demoSection("Nav Stacked", [
        nav([
          navLink({ href: "#" }, "Foo"),
          navLink({ href: "#" }, "Bar"),
          navLink({ active: true, href: "#" }, "Baz")
        ]).orientation(Stacked).style(Pills)
      ]),
      demoSection("Messages", [
        message(["Default message"]),
        message(["Info message"]).style(Info),
        message(["Success message"]).style(Success),
        message(["Warning message"]).style(Warning),
        message(["Danger message with dismissible"]).style(Danger).dismissible(function() console.log("message closed"))
      ]),
      demoSection("Menu", [
        menu([
          menuLabel("Heading"),
          menuAction("Open...", function () {}),
          menuAction("Save As...").disabled(),
          menuSeparator(),
          menuAction("Exit", function () {js.Browser.window.close(); })
        ])
      ])
    ]);
  }

  function demoSection(title: String, children: VNodes) {
    return section([
      h2(title).addClass("section-title"),
      div(children).addClass("section-body")
    ]).addClass("demo-section");
  }

  function inlineExample(children: VNodes) {
    return div(children).addClass("example-inline");
  }

  function fillerText() {
    return p("Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean
              sed hendrerit libero, et tempor orci. Nam facilisis neque at diam
              blandit, vitae lacinia erat imperdiet.");
  }
}
