import { StrictMode } from 'react';
import { createRoot } from 'react-dom/client';
import MainScreen from './components/modules/screens/MainScreen';
import './index.css';
import './i18n';

createRoot(document.getElementById('root')!).render(
  <StrictMode>
    <MainScreen />
  </StrictMode>,
)
