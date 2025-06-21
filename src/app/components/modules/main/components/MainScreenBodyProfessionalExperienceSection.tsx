import { useTranslation } from 'react-i18next';
import ImageStore from '@/app/stores/image-store';
import MainScreenBodySection from '@/app/components/modules/main/components/MainScreenBodySection';
import MainScreenBodySectionImage from '@/app/components/modules/main/components/MainScreenBodySectionImage';

function MainScreenBodyProfessionalExperienceSection() {
  const { t } = useTranslation();

  return (
    <MainScreenBodySection title={t('professionalExperienceTitle')}>
      <div className={'flex flex-col items-start gap-3'}>
        <Job
          company={'Prolog App'}
          companyLogoSrc={ImageStore.prolog.src}
          companyLogoAlt={ImageStore.prolog.alt}
          jobTitle={t('professionalExperiencePrologAppJobTitle')}
          startDate={t('professionalExperiencePrologAppStartDate')}
          endDate={t('professionalExperiencePrologAppEndDate')}
        />
        <Job
          company={'Doutor-IE'}
          companyLogoSrc={ImageStore.doutorie.src}
          companyLogoAlt={ImageStore.doutorie.alt}
          jobTitle={t('professionalExperienceDoutorIeJobTitle')}
          startDate={t('professionalExperienceDoutorIeStartDate')}
          endDate={t('professionalExperienceDoutorIeEndDate')}
        />
      </div>
    </MainScreenBodySection>
  );
}

function Job({
  company,
  companyLogoSrc,
  companyLogoAlt,
  jobTitle,
  startDate,
  endDate,
}: {
  company: string,
  companyLogoSrc: string,
  companyLogoAlt: string,
  jobTitle: string,
  startDate: string,
  endDate: string,
}) {
  const companyLogoSrcSize = 60;

  return (
    <div className={'flex flex-row gap-3 items-center'}>
      <MainScreenBodySectionImage
        src={companyLogoSrc}
        alt={companyLogoAlt}
        size={companyLogoSrcSize}
      />
      <div className={'flex flex-col'}>
        <p className={'text-[20px] font-semibold'}>{company}</p>
        <p className={'font-italic text-[18px]'}>{jobTitle}</p>
        <p className={'text-[16px]'}>{startDate} - {endDate}</p>
      </div>
    </div>
  );
}

export default MainScreenBodyProfessionalExperienceSection;
