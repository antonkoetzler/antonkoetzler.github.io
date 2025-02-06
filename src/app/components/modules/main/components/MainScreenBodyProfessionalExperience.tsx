import { useTranslation } from 'react-i18next';
import ImageStore from '@/app/stores/image-store';
import MainScreenBodySection from '@/app/components/modules/main/components/MainScreenBodySection';

function MainScreenBodyProfessionalExperience() {
  const { t } = useTranslation();

  return (
    <MainScreenBodySection title={t('professionalExperienceTitle')}>
      <Job
        company={'Doutor-IE'}
        companyLogo={ImageStore.doutorie}
        jobTitle={t('professionalExperienceDoutorIeJobTitle')}
        startDate={t('professionalExperienceDoutorIeStartDate')}
        endDate={t('professionalExperienceDoutorIeEndDate')}
      />
    </MainScreenBodySection>
  );
}

function Job({
  company,
  companyLogo,
  jobTitle,
  startDate,
  endDate,
}: {
  company: string;
  companyLogo: string;
  jobTitle: string;
  startDate: string;
  endDate: string;
}) {
  const companyLogoSize = 70;

  return (
    <div className={'flex flex-row gap-3'}>
      <img
        src={companyLogo}
        width={companyLogoSize}
        height={companyLogoSize}
        className={'object-contain'}
      />
      <div className={'flex flex-col items-center'}>
        <p className={'text-[20px] font-semibold'}>{company}</p>
        <p className={'font-italic text-[18px]'}>{jobTitle}</p>
        <p className={'text-[16px]'}>
          {startDate} - {endDate}
        </p>
      </div>
    </div>
  );
}

export default MainScreenBodyProfessionalExperience;
