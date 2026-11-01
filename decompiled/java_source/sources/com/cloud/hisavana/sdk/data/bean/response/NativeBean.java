package com.cloud.hisavana.sdk.data.bean.response;

import android.os.Parcel;
import android.os.Parcelable;
import com.cloud.hisavana.sdk.R$string;
import com.cloud.sdk.commonutil.util.e;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public class NativeBean implements Parcelable {
    public static final Parcelable.Creator<NativeBean> CREATOR = new Parcelable.Creator<NativeBean>() { // from class: com.cloud.hisavana.sdk.data.bean.response.NativeBean.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public NativeBean createFromParcel(Parcel parcel) {
            return new NativeBean(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public NativeBean[] newArray(int i11) {
            return new NativeBean[i11];
        }
    };
    private ButtonDTO button;
    private DescriptDTO descript;
    private LogoDTO logo;
    private List<MainImagesDTO> mainImages;
    private Integer rating;
    private TitleDTO title;
    private String version;

    public static class ButtonDTO implements Parcelable {
        public static final Parcelable.Creator<ButtonDTO> CREATOR = new Parcelable.Creator<ButtonDTO>() { // from class: com.cloud.hisavana.sdk.data.bean.response.NativeBean.ButtonDTO.1
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public ButtonDTO createFromParcel(Parcel parcel) {
                return new ButtonDTO(parcel);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public ButtonDTO[] newArray(int i11) {
                return new ButtonDTO[i11];
            }
        };
        private final String text;

        protected ButtonDTO(Parcel parcel) {
            this.text = parcel.readString();
        }

        public ButtonDTO(String str) {
            this.text = str;
        }

        @Override // android.os.Parcelable
        public int describeContents() {
            return 0;
        }

        public String getText() {
            String str = this.text;
            return str == null ? "" : str;
        }

        public String toString() {
            return "ButtonDTO{text='" + this.text + "'}";
        }

        @Override // android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i11) {
            parcel.writeString(this.text);
        }
    }

    public static class DescriptDTO implements Parcelable {
        public static final Parcelable.Creator<DescriptDTO> CREATOR = new Parcelable.Creator<DescriptDTO>() { // from class: com.cloud.hisavana.sdk.data.bean.response.NativeBean.DescriptDTO.1
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public DescriptDTO createFromParcel(Parcel parcel) {
                return new DescriptDTO(parcel);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public DescriptDTO[] newArray(int i11) {
                return new DescriptDTO[i11];
            }
        };
        private final String text;

        protected DescriptDTO(Parcel parcel) {
            this.text = parcel.readString();
        }

        public DescriptDTO(String str) {
            this.text = str;
        }

        @Override // android.os.Parcelable
        public int describeContents() {
            return 0;
        }

        public String getText() {
            String str = this.text;
            return str == null ? "" : str;
        }

        public String toString() {
            return "DescriptDTO{text='" + this.text + "'}";
        }

        @Override // android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i11) {
            parcel.writeString(this.text);
        }
    }

    public static class LogoDTO implements Parcelable {
        public static final Parcelable.Creator<LogoDTO> CREATOR = new Parcelable.Creator<LogoDTO>() { // from class: com.cloud.hisavana.sdk.data.bean.response.NativeBean.LogoDTO.1
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public LogoDTO createFromParcel(Parcel parcel) {
                return new LogoDTO(parcel);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public LogoDTO[] newArray(int i11) {
                return new LogoDTO[i11];
            }
        };
        private Integer height;
        private final String url;
        private Integer width;

        protected LogoDTO(Parcel parcel) {
            this.url = parcel.readString();
            if (parcel.readByte() == 0) {
                this.width = null;
            } else {
                this.width = Integer.valueOf(parcel.readInt());
            }
            if (parcel.readByte() == 0) {
                this.height = null;
            } else {
                this.height = Integer.valueOf(parcel.readInt());
            }
        }

        public LogoDTO(String str) {
            this.url = str;
        }

        @Override // android.os.Parcelable
        public int describeContents() {
            return 0;
        }

        public Integer getHeight() {
            Integer num = this.height;
            return Integer.valueOf(num == null ? 0 : num.intValue());
        }

        public String getUrl() {
            String str = this.url;
            return str == null ? "" : str;
        }

        public Integer getWidth() {
            Integer num = this.width;
            return Integer.valueOf(num == null ? 0 : num.intValue());
        }

        public String toString() {
            return "LogoDTO{url='" + this.url + "', width=" + this.width + ", height=" + this.height + '}';
        }

        @Override // android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i11) {
            parcel.writeString(this.url);
            if (this.width == null) {
                parcel.writeByte((byte) 0);
            } else {
                parcel.writeByte((byte) 1);
                parcel.writeInt(this.width.intValue());
            }
            if (this.height == null) {
                parcel.writeByte((byte) 0);
            } else {
                parcel.writeByte((byte) 1);
                parcel.writeInt(this.height.intValue());
            }
        }
    }

    public static class MainImagesDTO implements Parcelable {
        public static final Parcelable.Creator<MainImagesDTO> CREATOR = new Parcelable.Creator<MainImagesDTO>() { // from class: com.cloud.hisavana.sdk.data.bean.response.NativeBean.MainImagesDTO.1
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public MainImagesDTO createFromParcel(Parcel parcel) {
                return new MainImagesDTO(parcel);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public MainImagesDTO[] newArray(int i11) {
                return new MainImagesDTO[i11];
            }
        };
        private Integer height;
        private String interactiveUrl;
        private final String url;
        private Integer width;

        protected MainImagesDTO(Parcel parcel) {
            this.url = parcel.readString();
            if (parcel.readByte() == 0) {
                this.width = null;
            } else {
                this.width = Integer.valueOf(parcel.readInt());
            }
            if (parcel.readByte() == 0) {
                this.height = null;
            } else {
                this.height = Integer.valueOf(parcel.readInt());
            }
            this.interactiveUrl = parcel.readString();
        }

        public MainImagesDTO(String str) {
            this.url = str;
        }

        @Override // android.os.Parcelable
        public int describeContents() {
            return 0;
        }

        public Integer getHeight() {
            Integer num = this.height;
            return Integer.valueOf(num == null ? 0 : num.intValue());
        }

        public String getInteractiveUrl() {
            return this.interactiveUrl;
        }

        public String getUrl() {
            String str = this.url;
            return str == null ? "" : str;
        }

        public Integer getWidth() {
            Integer num = this.width;
            return Integer.valueOf(num == null ? 0 : num.intValue());
        }

        public String toString() {
            return "MainImagesDTO{url='" + this.url + "', width=" + this.width + ", height=" + this.height + '}';
        }

        @Override // android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i11) {
            parcel.writeString(this.url);
            if (this.width == null) {
                parcel.writeByte((byte) 0);
            } else {
                parcel.writeByte((byte) 1);
                parcel.writeInt(this.width.intValue());
            }
            if (this.height == null) {
                parcel.writeByte((byte) 0);
            } else {
                parcel.writeByte((byte) 1);
                parcel.writeInt(this.height.intValue());
            }
            parcel.writeString(this.interactiveUrl);
        }
    }

    public static class TitleDTO implements Parcelable {
        public static final Parcelable.Creator<TitleDTO> CREATOR = new Parcelable.Creator<TitleDTO>() { // from class: com.cloud.hisavana.sdk.data.bean.response.NativeBean.TitleDTO.1
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public TitleDTO createFromParcel(Parcel parcel) {
                return new TitleDTO(parcel);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public TitleDTO[] newArray(int i11) {
                return new TitleDTO[i11];
            }
        };
        private final String text;

        protected TitleDTO(Parcel parcel) {
            this.text = parcel.readString();
        }

        public TitleDTO(String str) {
            this.text = str;
        }

        @Override // android.os.Parcelable
        public int describeContents() {
            return 0;
        }

        public String getText() {
            String str = this.text;
            return str == null ? "" : str;
        }

        public String toString() {
            return "TitleDTO{text='" + this.text + "'}";
        }

        @Override // android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i11) {
            parcel.writeString(this.text);
        }
    }

    public NativeBean() {
    }

    protected NativeBean(Parcel parcel) {
        this.version = parcel.readString();
        if (parcel.readByte() == 0) {
            this.rating = null;
        } else {
            this.rating = Integer.valueOf(parcel.readInt());
        }
        this.title = (TitleDTO) parcel.readParcelable(TitleDTO.class.getClassLoader());
        this.descript = (DescriptDTO) parcel.readParcelable(DescriptDTO.class.getClassLoader());
        this.button = (ButtonDTO) parcel.readParcelable(ButtonDTO.class.getClassLoader());
        this.logo = (LogoDTO) parcel.readParcelable(LogoDTO.class.getClassLoader());
        this.mainImages = parcel.createTypedArrayList(MainImagesDTO.CREATOR);
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public ButtonDTO getButton() {
        return this.button;
    }

    public String getButtonTxt(int i11) {
        if (i11 == 2) {
            return e.a().getResources().getString(R$string.open);
        }
        if (i11 == 3) {
            return e.a().getResources().getString(R$string.install);
        }
        ButtonDTO buttonDTO = this.button;
        return buttonDTO == null ? "" : buttonDTO.getText();
    }

    public String getDescriptionTxt() {
        DescriptDTO descriptDTO = this.descript;
        return descriptDTO == null ? "" : descriptDTO.getText();
    }

    public LogoDTO getLogo() {
        return this.logo;
    }

    public String getLogoUrl() {
        LogoDTO logoDTO = this.logo;
        return logoDTO == null ? "" : logoDTO.getUrl();
    }

    public List<MainImagesDTO> getMainImages() {
        return this.mainImages;
    }

    public Integer getRating() {
        Integer num = this.rating;
        return Integer.valueOf(num == null ? 0 : num.intValue());
    }

    public String getTitleTxt() {
        TitleDTO titleDTO = this.title;
        return titleDTO == null ? "" : titleDTO.getText();
    }

    public String getVersion() {
        String str = this.version;
        return str == null ? "" : str;
    }

    public void setButton(ButtonDTO buttonDTO) {
        this.button = buttonDTO;
    }

    public void setDescript(DescriptDTO descriptDTO) {
        this.descript = descriptDTO;
    }

    public void setLogo(LogoDTO logoDTO) {
        this.logo = logoDTO;
    }

    public void setMainImages(List<MainImagesDTO> list) {
        this.mainImages = list;
    }

    public void setRating(Integer num) {
        this.rating = num;
    }

    public void setTitle(TitleDTO titleDTO) {
        this.title = titleDTO;
    }

    public void setVersion(String str) {
        this.version = str;
    }

    public String toString() {
        return "NativeBean{version='" + this.version + "', rating=" + this.rating + ", title=" + this.title + ", descript=" + this.descript + ", button=" + this.button + ", logo=" + this.logo + ", mainImages=" + this.mainImages + '}';
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i11) {
        parcel.writeString(this.version);
        if (this.rating == null) {
            parcel.writeByte((byte) 0);
        } else {
            parcel.writeByte((byte) 1);
            parcel.writeInt(this.rating.intValue());
        }
        parcel.writeParcelable(this.title, i11);
        parcel.writeParcelable(this.descript, i11);
        parcel.writeParcelable(this.button, i11);
        parcel.writeParcelable(this.logo, i11);
        parcel.writeTypedList(this.mainImages);
    }
}
