import React, { useState, useEffect } from 'react';
import moment from 'moment';
import './App.css';

function App() {
  const [text, setText] = useState()

  useEffect(()=>{
    const timer = setInterval(()=>{ setText(moment().format('YYYY-MM-DD HH:mm:ss'))}, 1000);;
  
    return ()=>{ clearTimeout(timer) }
  }, []);

  
  return (
    <div className="App">
      <div className="timerContainer">
        {text}
      </div>
    </div>
  );
}

export default App;
