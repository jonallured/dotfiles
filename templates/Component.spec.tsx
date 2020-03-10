import React from "react"
import { mount } from "enzyme"
import { Component, ComponentProps } from "./Component"

const defaultProps: ComponentProps = {
}

describe("Component", () => {
  it("renders", () => {
    const props: ComponentProps = {
      ...defaultProps
    }

    const wrapper = mount(<Component {...props} />)

    expect(wrapper.text()).toMatch("Component")
    expect(wrapper.find("h1")).toHaveLength(1)
  })
})
