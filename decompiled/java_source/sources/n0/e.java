package n0;

import android.os.LocaleList;
import android.util.Log;
import androidx.compose.ui.text.platform.o;
import androidx.compose.ui.text.platform.p;
import com.mbridge.msdk.playercommon.exoplayer2.C;
import java.util.ArrayList;
import java.util.Locale;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes2.dex */
public final class e implements j {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private LocaleList f70055a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private i f70056b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final p f70057c = o.a();

    @Override // n0.j
    public Locale a(String str) {
        Locale localeForLanguageTag = Locale.forLanguageTag(str);
        if (Intrinsics.c(localeForLanguageTag.toLanguageTag(), C.LANGUAGE_UNDETERMINED)) {
            Log.e(f.f70058a, "The language tag " + str + " is not well-formed. Locale is resolved to Undetermined. Note that underscore '_' is not a valid subtag delimiter and must be replaced with '-'.");
        }
        return localeForLanguageTag;
    }

    @Override // n0.j
    public i d() {
        LocaleList localeList = LocaleList.getDefault();
        synchronized (this.f70057c) {
            i iVar = this.f70056b;
            if (iVar != null && localeList == this.f70055a) {
                return iVar;
            }
            int size = localeList.size();
            ArrayList arrayList = new ArrayList(size);
            for (int i11 = 0; i11 < size; i11++) {
                arrayList.add(new h(localeList.get(i11)));
            }
            i iVar2 = new i(arrayList);
            this.f70055a = localeList;
            this.f70056b = iVar2;
            return iVar2;
        }
    }
}
