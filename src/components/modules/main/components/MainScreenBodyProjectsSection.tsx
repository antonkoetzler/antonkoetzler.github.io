import { useTranslation } from 'react-i18next';
import List from '@/components/ui/lists/List';
import MainScreenBodySection from '@/components/modules/main/components/MainScreenBodySection';

function MainScreenBodyProjectsSection() {
  const { t } = useTranslation();

  return (
    <MainScreenBodySection title={t('projectsTitle')}>
      <Project
        name={'Myoro Flutter Library'}
        facts={[
          t('projectsMyoroFlutterLibraryFact1'),
          t('projectsMyoroFlutterLibraryFact2'),
          t('projectsMyoroFlutterLibraryFact3'),
          t('projectsMyoroFlutterLibraryFact4'),
        ]}
      />
    </MainScreenBodySection>
  );
}

function Project({
  name,
  facts,
}: {
  name: string,
  facts: string[],
}) {
  return (
    <div className={'flex flex-col'}>
      <p className={'font-semibold text-lg'}>{name}</p>
      <List items={facts} />
    </div>
  );
}

export default MainScreenBodyProjectsSection;
