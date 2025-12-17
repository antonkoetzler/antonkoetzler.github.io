import { StrictMode } from 'react';
import { createRoot } from 'react-dom/client';
import { HashRouter, Routes, Route } from 'react-router-dom';
import './app/index.css';
import './i18n';
import MainScreen from '@/app/components/modules/main/screens/MainScreen';
import LegalScreen from '@/app/components/modules/legal/screens/LegalScreen';

createRoot(document.getElementById('root')!).render(
  <StrictMode>
    <HashRouter>
      <Routes>
        <Route path="/" element={<MainScreen />} />
        <Route path="/legal" element={<LegalScreen />} />
      </Routes>
    </HashRouter>
  </StrictMode>
);
