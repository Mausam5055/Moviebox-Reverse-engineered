package com.transsion.usercenter.setting.labelsfeedback.model;

import android.content.Context;
import com.blankj.utilcode.util.o;
import com.google.gson.annotations.SerializedName;
import com.tencent.mmkv.MMKV;
import com.transsion.usercenter.R$string;
import com.transsion.usercenter.setting.labelsfeedback.model.FbOption;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.io.Serializable;
import java.util.List;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes7.dex */
@Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0012\n\u0002\u0010 \n\u0002\b\t\u0018\u0000  2\u00020\u0001:\u0001!B\t\b\u0016¢\u0006\u0004\b\u0002\u0010\u0003B\u0019\b\u0016\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006¢\u0006\u0004\b\u0002\u0010\bR$\u0010\t\u001a\u0004\u0018\u00010\u00048\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\t\u0010\n\u001a\u0004\b\u000b\u0010\f\"\u0004\b\r\u0010\u000eR\"\u0010\u0007\u001a\u00020\u00068\u0006@\u0006X\u0087\u000e¢\u0006\u0012\n\u0004\b\u0007\u0010\u000f\u001a\u0004\b\u0010\u0010\u0011\"\u0004\b\u0012\u0010\u0013R\"\u0010\u0005\u001a\u00020\u00048\u0006@\u0006X\u0087\u000e¢\u0006\u0012\n\u0004\b\u0005\u0010\u0014\u001a\u0004\b\u0015\u0010\u0016\"\u0004\b\u0017\u0010\u0018R(\u0010\u001a\u001a\b\u0012\u0004\u0012\u00020\u00000\u00198\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u001a\u0010\u001b\u001a\u0004\b\u001c\u0010\u001d\"\u0004\b\u001e\u0010\u001f¨\u0006\""}, d2 = {"Lcom/transsion/usercenter/setting/labelsfeedback/model/FbOption;", "Ljava/io/Serializable;", "<init>", "()V", "", "id", "", "name", "(ILjava/lang/String;)V", "selectedIndex", "Ljava/lang/Integer;", "getSelectedIndex", "()Ljava/lang/Integer;", "setSelectedIndex", "(Ljava/lang/Integer;)V", "Ljava/lang/String;", "getName", "()Ljava/lang/String;", "setName", "(Ljava/lang/String;)V", "I", "getId", "()I", "setId", "(I)V", "", "options", "Ljava/util/List;", "getOptions", "()Ljava/util/List;", "setOptions", "(Ljava/util/List;)V", "Companion", "a", "UserCenter_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final class FbOption implements Serializable {

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private static final Lazy<MMKV> mmkv$delegate = LazyKt.b(new Function0() { // from class: ax.a
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            return FbOption.mmkv_delegate$lambda$0();
        }
    });

    @SerializedName("labelId")
    private int id;

    @SerializedName("labelName")
    private String name;
    private List<FbOption> options;
    private Integer selectedIndex;

    /* JADX INFO: renamed from: com.transsion.usercenter.setting.labelsfeedback.model.FbOption$a, reason: from kotlin metadata */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private final MMKV c() {
            return (MMKV) FbOption.mmkv$delegate.getValue();
        }

        public final List a(Context context) {
            Intrinsics.h(context, "context");
            FbOptionList fbOptionListB = b();
            if (fbOptionListB != null) {
                return fbOptionListB.getLabelList();
            }
            String string = context.getString(R$string.feedback_viewing_experience);
            Intrinsics.g(string, "getString(...)");
            String string2 = context.getString(R$string.feedback_subtitls);
            Intrinsics.g(string2, "getString(...)");
            String string3 = context.getString(R$string.feedback_download);
            Intrinsics.g(string3, "getString(...)");
            String string4 = context.getString(R$string.feedback_file_management);
            Intrinsics.g(string4, "getString(...)");
            String string5 = context.getString(R$string.feedback_copyright);
            Intrinsics.g(string5, "getString(...)");
            String string6 = context.getString(R$string.feedback_pornographic_content);
            Intrinsics.g(string6, "getString(...)");
            String string7 = context.getString(R$string.other);
            Intrinsics.g(string7, "getString(...)");
            return CollectionsKt.o(new FbOption(1, string), new FbOption(2, string2), new FbOption(3, string3), new FbOption(4, string4), new FbOption(6, string5), new FbOption(7, string6), new FbOption(5, string7));
        }

        public final FbOptionList b() {
            String strK = c().k("LAST_SERVER_OPTION");
            if (strK == null) {
                strK = "";
            }
            try {
                return (FbOptionList) o.d(strK, FbOptionList.class);
            } catch (Exception e11) {
                e11.printStackTrace();
                return null;
            }
        }

        public final void d(FbOptionList fbOptionList) {
            if (fbOptionList != null) {
                try {
                    FbOption.INSTANCE.c().v("LAST_SERVER_OPTION", o.j(fbOptionList));
                } catch (Exception e11) {
                    e11.printStackTrace();
                }
            }
        }
    }

    public FbOption() {
        this.name = "";
        this.options = CollectionsKt.l();
    }

    public FbOption(int i11, String name) {
        Intrinsics.h(name, "name");
        this.name = "";
        this.options = CollectionsKt.l();
        this.id = i11;
        this.name = name;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final MMKV mmkv_delegate$lambda$0() {
        MMKV mmkvI = MMKV.I("feedback_mmkv");
        Intrinsics.g(mmkvI, "mmkvWithID(...)");
        return mmkvI;
    }

    public final int getId() {
        return this.id;
    }

    public final String getName() {
        return this.name;
    }

    public final List<FbOption> getOptions() {
        return this.options;
    }

    public final Integer getSelectedIndex() {
        return this.selectedIndex;
    }

    public final void setId(int i11) {
        this.id = i11;
    }

    public final void setName(String str) {
        Intrinsics.h(str, "<set-?>");
        this.name = str;
    }

    public final void setOptions(List<FbOption> list) {
        Intrinsics.h(list, "<set-?>");
        this.options = list;
    }

    public final void setSelectedIndex(Integer num) {
        this.selectedIndex = num;
    }
}
