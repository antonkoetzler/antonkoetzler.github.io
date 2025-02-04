import { useTranslation } from 'react-i18next';
import MainScreenBodySection from './MainScreenBodySection';

function MainScreenBodyAboutMeSection() {
  const { t } = useTranslation();

  return (
    <MainScreenBodySection title={t('aboutMeTitle')}>
      <AboutMe />
    </MainScreenBodySection>
  );
}

function AboutMe() {
  const { t } = useTranslation();

  return (
    <ul className='list-none'>
      {[
        t('aboutMeFact1'),
        t('aboutMeFact2'),
        t('aboutMeFact3'),
        t('aboutMeFact4'),
        t('aboutMeFact5'),
      ].map((fact: string, index) => (
        <p key={index}>- {fact}</p>
      ))}
    </ul>
  );
}

export default MainScreenBodyAboutMeSection;