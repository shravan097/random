import * as React from 'react';
import Container from '@mui/material/Container';
import Typography from '@mui/material/Typography';
import Link from '@mui/material/Link';
import AppBar from '@mui/material/AppBar';

function Copyright() {
  return (
    <Typography variant="body2" color="text.secondary" align="center">
      {'Copyright © '}
      <Link color="inherit" href="https://mui.com/">
        Your Website
      </Link>{' '}
      {new Date().getFullYear()}
      {'.'}
    </Typography>
  );
}

function Header() {
  return (
    <>
    <div >
      <AppBar position="static">
        <Typography className="flex justify-center" variant="h2" component="h3">
          My Thing
        </Typography>
      </AppBar>
     

    </div>
      
    </>
  )
}

export default function App() {
  return (
    <>
      <Header/>
      {/* <Body/> */}
    </>
      
    
  );
}
