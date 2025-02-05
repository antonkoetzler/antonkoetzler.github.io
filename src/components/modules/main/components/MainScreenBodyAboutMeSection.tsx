import { useTranslation } from 'react-i18next';
import List from '@/components/ui/lists/List';
import MainScreenBodySection from '@/components/modules/main/components/MainScreenBodySection';

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
    <List
      items={[
        t('aboutMeFact1'),
        t('aboutMeFact2'),
        t('aboutMeFact3'),
        t('aboutMeFact4'),
        t('aboutMeFact5'),
      ]}
    />
  );
}

export default MainScreenBodyAboutMeSection;
