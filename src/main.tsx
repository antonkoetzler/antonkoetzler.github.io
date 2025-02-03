import { StrictMode } from 'react';
import { createRoot } from 'react-dom/client';
import MainScreen from './components/modules/screens/main_screen';
import './index.css';
import './i18n';

createRoot(document.getElementById('root')!).render(
  <StrictMode>
    <MainScreen />
  </StrictMode>,
)
