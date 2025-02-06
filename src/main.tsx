import { StrictMode } from 'react';
import { createRoot } from 'react-dom/client';
import './app/index.css';
import './i18n';
import MainScreen from '@/app/components/modules/main/screens/MainScreen';

createRoot(document.getElementById('root')!).render(
  <StrictMode>
    <MainScreen />
  </StrictMode>
);
