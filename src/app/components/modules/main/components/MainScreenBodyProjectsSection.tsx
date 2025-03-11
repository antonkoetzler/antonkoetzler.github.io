import MainScreenBodySection from '@/app/components/modules/main/components/MainScreenBodySection';
import List from '@/app/components/ui/lists/List';
import { useTranslation } from 'react-i18next';
import ImageStore, { Image } from '@/app/stores/image-store';

function MainScreenBodyProjectsSection() {
  const { t } = useTranslation();

  return (
    <MainScreenBodySection title={t('projectsTitle')}>
      <div className={'flex flex-col items-start gap-3'}>
        <Project
          name={'Myoro Flutter Library'}
          href={'https://github.com/antonkoetzler/myoro_flutter_library'}
          techstackImages={[
            ImageStore.dart,
            ImageStore.flutter,
            ImageStore.sqlite,
          ]}
          facts={[
            t('projectsMyoroFlutterLibraryFact1'),
            t('projectsMyoroFlutterLibraryFact2'),
            t('projectsMyoroFlutterLibraryFact3'),
            t('projectsMyoroFlutterLibraryFact4'),
          ]}
        />
        <Project
          name={t('projectsPortfolioTitle')}
          href={'https://github.com/antonkoetzler/antonkoetzler.github.io'}
          techstackImages={[
            ImageStore.typescript,
            ImageStore.bun,
            ImageStore.react,
            ImageStore.tailwind,
            ImageStore.shadcn,
            ImageStore.vite,
          ]}
          facts={[
            t('projectsPortfolioFact1'),
            t('projectsPortfolioFact2'),
            t('projectsPortfolioFact3'),
          ]}
        />
        <Project
          name={'MyoroAPI'}
          href={'https://github.com/antonkoetzler/myoro_api'}
          techstackImages={[
            ImageStore.php,
            ImageStore.laravel,
            ImageStore.docker,
            ImageStore.postgres,
          ]}
          techstackImagesGap={8}
          facts={[
            t('projectsMyoroApiFact1'),
            t('projectsMyoroApiFact2'),
          ]}
        />
        <Project
          name={t('projectsNvimConfigTitle')}
          href={'https://github.com/antonkoetzler/nvim-config'}
          techstackImages={[
            ImageStore.lua,
            ImageStore.neovim,
          ]}
          techstackImagesGap={10}
          facts={[
            t('projectsNvimConfigFact1'),
            t('projectsNvimConfigFact2'),
          ]}
        />
      </div>
    </MainScreenBodySection>
  );
}

interface ProjectProps {
  name: string;
  href: string;
  techstackImages: Image[];
  techstackImagesGap?: number;
  facts: string[];
}

function Project({
  name,
  href,
  techstackImages,
  techstackImagesGap,
  facts,
}: ProjectProps) {
  const techstackIconSize = 38;

  return (
    <div className={'flex flex-col w-full'}>
      <div className={'flex flex-row items-center justify-between'}>
        <a
          href={href}
          target={'_blank'}
          rel={'noopener noreferrer'}
          className={'text-[20px] font-semibold text-blue-300 visited:text-purple-300'}
        >{name}</a>
        <div
          className={`flex flex-row flex-wrap`}
          style={{ gap: techstackImagesGap ?? 5 }}
        >
          {
            techstackImages.map((image, index) => (
              <img
                key={index}
                src={image.src}
                alt={image.alt}
                title={image.alt}
                width={techstackIconSize}
                height={techstackIconSize}
                className={'object-contain'}
              />
            ))
          }
        </div>
      </div>
      <List items={facts} />
    </div>
  );
}

export default MainScreenBodyProjectsSection;
