import MainScreenBodySection from '@/app/components/modules/main/components/MainScreenBodySection';
import List from '@/app/components/ui/lists/List';
import { useTranslation } from 'react-i18next';

function MainScreenBodyAboutMeSection() {
  const { t } = useTranslation();

  return (
    <MainScreenBodySection title={t('aboutMeTitle')}>
      <List
        items={[
          t('aboutMeFact1'),
          t('aboutMeFact2'),
          t('aboutMeFact3'),
          t('aboutMeFact4'),
          t('aboutMeFact5'),
          t('aboutMeFact6'),
        ]}
      />
    </MainScreenBodySection>
  );
}

export default MainScreenBodyAboutMeSection;
