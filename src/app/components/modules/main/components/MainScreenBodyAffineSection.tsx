import MainScreenBodySection from '@/app/components/modules/main/components/MainScreenBodySection';
import { Button } from '@/app/components/ui/buttons/Button';
import { useTranslation } from 'react-i18next';

function MainScreenBodyAffineSection() {
  const { t } = useTranslation();

  return (
    <MainScreenBodySection title={t('affineTitle')}>
      <div className={'flex flex-row gap-4'}>
        <Button variant={'outline'}>
          <a
            target={'_blank'}
            rel={'noopener noreferrer'}
            href={
              'https://app.affine.pro/workspace/02defb85-8959-4667-9969-24a0f8b87a1d/CM4zyaYyuwv9W9jUozjXU'
            }
          >
            {t('myoroAffinePage')}
          </a>
        </Button>
        <Button variant={'outline'}>
          <a
            target={'_blank'}
            rel={'noopener noreferrer'}
            href={
              'https://app.affine.pro/workspace/02defb85-8959-4667-9969-24a0f8b87a1d/Gd4J3n9gdqZyzosc2kvjd'
            }
          >
            {t('antonsFlutterBibleAffinePage')}
          </a>
        </Button>
        <Button variant={'outline'}>
          <a
            target={'_blank'}
            rel={'noopener noreferrer'}
            href={
              'https://app.affine.pro/workspace/02defb85-8959-4667-9969-24a0f8b87a1d/Sj-XvLpHZSWrWR1qm4Za0'
            }
          >
            {t('2xkoAffinePage')}
          </a>
        </Button>
      </div>
    </MainScreenBodySection>
  );
}

export default MainScreenBodyAffineSection;
