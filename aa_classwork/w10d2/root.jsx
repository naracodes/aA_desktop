import React from 'react';
import Clock from './clock.jsx';
import Tabs from './tabs.jsx';

const tabInfo = [
    {title: "one", content: "I am the first"},
    {title: "two", content: "Second pane here"},
    {title: "three", content: "Third pane here"}
];

const Root = (props) => {
    return 
    <>
      <Clock />;
      <Tabs tabInfo={tabInfo}/>
    </>;
}

export default Root;