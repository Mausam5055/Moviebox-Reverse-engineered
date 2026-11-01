package gd;

import android.content.Intent;
import com.google.zxing.BarcodeFormat;
import java.util.Arrays;
import java.util.Collection;
import java.util.EnumSet;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import java.util.regex.Pattern;

/* JADX INFO: loaded from: classes5.dex */
public abstract class f {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final Pattern f63540a = Pattern.compile(",");

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    static final Set f63541b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    static final Set f63542c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static final Set f63543d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    static final Set f63544e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    static final Set f63545f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    static final Set f63546g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    static final Set f63547h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private static final Map f63548i;

    static {
        EnumSet enumSetOf = EnumSet.of(BarcodeFormat.QR_CODE);
        f63544e = enumSetOf;
        EnumSet enumSetOf2 = EnumSet.of(BarcodeFormat.DATA_MATRIX);
        f63545f = enumSetOf2;
        EnumSet enumSetOf3 = EnumSet.of(BarcodeFormat.AZTEC);
        f63546g = enumSetOf3;
        EnumSet enumSetOf4 = EnumSet.of(BarcodeFormat.PDF_417);
        f63547h = enumSetOf4;
        EnumSet enumSetOf5 = EnumSet.of(BarcodeFormat.UPC_A, BarcodeFormat.UPC_E, BarcodeFormat.EAN_13, BarcodeFormat.EAN_8, BarcodeFormat.RSS_14, BarcodeFormat.RSS_EXPANDED);
        f63541b = enumSetOf5;
        EnumSet enumSetOf6 = EnumSet.of(BarcodeFormat.CODE_39, BarcodeFormat.CODE_93, BarcodeFormat.CODE_128, BarcodeFormat.ITF, BarcodeFormat.CODABAR);
        f63542c = enumSetOf6;
        EnumSet enumSetCopyOf = EnumSet.copyOf((Collection) enumSetOf5);
        f63543d = enumSetCopyOf;
        enumSetCopyOf.addAll(enumSetOf6);
        HashMap map = new HashMap();
        f63548i = map;
        map.put("ONE_D_MODE", enumSetCopyOf);
        map.put("PRODUCT_MODE", enumSetOf5);
        map.put("QR_CODE_MODE", enumSetOf);
        map.put("DATA_MATRIX_MODE", enumSetOf2);
        map.put("AZTEC_MODE", enumSetOf3);
        map.put("PDF417_MODE", enumSetOf4);
    }

    public static Set a(Intent intent) {
        String stringExtra = intent.getStringExtra("SCAN_FORMATS");
        return b(stringExtra != null ? Arrays.asList(f63540a.split(stringExtra)) : null, intent.getStringExtra("SCAN_MODE"));
    }

    private static Set b(Iterable iterable, String str) {
        if (iterable != null) {
            EnumSet enumSetNoneOf = EnumSet.noneOf(BarcodeFormat.class);
            try {
                Iterator it = iterable.iterator();
                while (it.hasNext()) {
                    enumSetNoneOf.add(BarcodeFormat.valueOf((String) it.next()));
                }
                return enumSetNoneOf;
            } catch (IllegalArgumentException unused) {
            }
        }
        if (str != null) {
            return (Set) f63548i.get(str);
        }
        return null;
    }
}
