package androidx.core.graphics.drawable;

import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.BitmapShader;
import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.PorterDuff;
import android.graphics.Shader;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.Icon;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.os.Parcelable;
import android.text.TextUtils;
import android.util.Log;
import androidx.core.util.i;
import androidx.core.view.ViewCompat;
import androidx.versionedparcelable.CustomVersionedParcelable;
import com.cloud.tmc.kernel.minicover.NativeComponentConstants;
import com.cloud.tmc.kernel.utils.NetworkUtil;
import com.cloud.tmc.offline.download.constants.OfflineConstantsKt;
import com.mbridge.msdk.playercommon.exoplayer2.C;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.InputStream;
import java.lang.reflect.InvocationTargetException;
import java.nio.charset.Charset;

/* JADX INFO: loaded from: classes.dex */
public class IconCompat extends CustomVersionedParcelable {

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    static final PorterDuff.Mode f8141k = PorterDuff.Mode.SRC_IN;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public int f8142a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    Object f8143b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public byte[] f8144c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public Parcelable f8145d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f8146e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int f8147f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public ColorStateList f8148g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    PorterDuff.Mode f8149h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public String f8150i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public String f8151j;

    static class a {
        static IconCompat a(Object obj) {
            i.g(obj);
            int iD = d(obj);
            if (iD == 2) {
                return IconCompat.k(null, c(obj), b(obj));
            }
            if (iD == 4) {
                return IconCompat.h(e(obj));
            }
            if (iD == 6) {
                return IconCompat.e(e(obj));
            }
            IconCompat iconCompat = new IconCompat(-1);
            iconCompat.f8143b = obj;
            return iconCompat;
        }

        static int b(Object obj) {
            if (Build.VERSION.SDK_INT >= 28) {
                return c.a(obj);
            }
            try {
                return ((Integer) obj.getClass().getMethod("getResId", null).invoke(obj, null)).intValue();
            } catch (IllegalAccessException e11) {
                Log.e("IconCompat", "Unable to get icon resource", e11);
                return 0;
            } catch (NoSuchMethodException e12) {
                Log.e("IconCompat", "Unable to get icon resource", e12);
                return 0;
            } catch (InvocationTargetException e13) {
                Log.e("IconCompat", "Unable to get icon resource", e13);
                return 0;
            }
        }

        static String c(Object obj) {
            if (Build.VERSION.SDK_INT >= 28) {
                return c.b(obj);
            }
            try {
                return (String) obj.getClass().getMethod("getResPackage", null).invoke(obj, null);
            } catch (IllegalAccessException e11) {
                Log.e("IconCompat", "Unable to get icon package", e11);
                return null;
            } catch (NoSuchMethodException e12) {
                Log.e("IconCompat", "Unable to get icon package", e12);
                return null;
            } catch (InvocationTargetException e13) {
                Log.e("IconCompat", "Unable to get icon package", e13);
                return null;
            }
        }

        static int d(Object obj) {
            if (Build.VERSION.SDK_INT >= 28) {
                return c.c(obj);
            }
            try {
                return ((Integer) obj.getClass().getMethod("getType", null).invoke(obj, null)).intValue();
            } catch (IllegalAccessException e11) {
                Log.e("IconCompat", "Unable to get icon type " + obj, e11);
                return -1;
            } catch (NoSuchMethodException e12) {
                Log.e("IconCompat", "Unable to get icon type " + obj, e12);
                return -1;
            } catch (InvocationTargetException e13) {
                Log.e("IconCompat", "Unable to get icon type " + obj, e13);
                return -1;
            }
        }

        static Uri e(Object obj) {
            if (Build.VERSION.SDK_INT >= 28) {
                return c.d(obj);
            }
            try {
                return (Uri) obj.getClass().getMethod("getUri", null).invoke(obj, null);
            } catch (IllegalAccessException e11) {
                Log.e("IconCompat", "Unable to get icon uri", e11);
                return null;
            } catch (NoSuchMethodException e12) {
                Log.e("IconCompat", "Unable to get icon uri", e12);
                return null;
            } catch (InvocationTargetException e13) {
                Log.e("IconCompat", "Unable to get icon uri", e13);
                return null;
            }
        }

        static Drawable f(Icon icon, Context context) {
            return icon.loadDrawable(context);
        }

        static Icon g(IconCompat iconCompat, Context context) {
            Icon iconCreateWithBitmap;
            switch (iconCompat.f8142a) {
                case -1:
                    return (Icon) iconCompat.f8143b;
                case 0:
                default:
                    throw new IllegalArgumentException("Unknown type");
                case 1:
                    iconCreateWithBitmap = Icon.createWithBitmap((Bitmap) iconCompat.f8143b);
                    break;
                case 2:
                    iconCreateWithBitmap = Icon.createWithResource(iconCompat.n(), iconCompat.f8146e);
                    break;
                case 3:
                    iconCreateWithBitmap = Icon.createWithData((byte[]) iconCompat.f8143b, iconCompat.f8146e, iconCompat.f8147f);
                    break;
                case 4:
                    iconCreateWithBitmap = Icon.createWithContentUri((String) iconCompat.f8143b);
                    break;
                case 5:
                    iconCreateWithBitmap = Build.VERSION.SDK_INT < 26 ? Icon.createWithBitmap(IconCompat.d((Bitmap) iconCompat.f8143b, false)) : b.a((Bitmap) iconCompat.f8143b);
                    break;
                case 6:
                    int i11 = Build.VERSION.SDK_INT;
                    if (i11 >= 30) {
                        iconCreateWithBitmap = d.a(iconCompat.q());
                    } else {
                        if (context == null) {
                            throw new IllegalArgumentException("Context is required to resolve the file uri of the icon: " + iconCompat.q());
                        }
                        InputStream inputStreamR = iconCompat.r(context);
                        if (inputStreamR == null) {
                            throw new IllegalStateException("Cannot load adaptive icon from uri: " + iconCompat.q());
                        }
                        if (i11 < 26) {
                            iconCreateWithBitmap = Icon.createWithBitmap(IconCompat.d(BitmapFactory.decodeStream(inputStreamR), false));
                        } else {
                            iconCreateWithBitmap = b.a(BitmapFactory.decodeStream(inputStreamR));
                        }
                    }
                    break;
            }
            ColorStateList colorStateList = iconCompat.f8148g;
            if (colorStateList != null) {
                iconCreateWithBitmap.setTintList(colorStateList);
            }
            PorterDuff.Mode mode = iconCompat.f8149h;
            if (mode != IconCompat.f8141k) {
                iconCreateWithBitmap.setTintMode(mode);
            }
            return iconCreateWithBitmap;
        }
    }

    static class b {
        static Icon a(Bitmap bitmap) {
            return Icon.createWithAdaptiveBitmap(bitmap);
        }
    }

    static class c {
        static int a(Object obj) {
            return ((Icon) obj).getResId();
        }

        static String b(Object obj) {
            return ((Icon) obj).getResPackage();
        }

        static int c(Object obj) {
            return ((Icon) obj).getType();
        }

        static Uri d(Object obj) {
            return ((Icon) obj).getUri();
        }
    }

    static class d {
        static Icon a(Uri uri) {
            return Icon.createWithAdaptiveBitmapContentUri(uri);
        }
    }

    public IconCompat() {
        this.f8142a = -1;
        this.f8144c = null;
        this.f8145d = null;
        this.f8146e = 0;
        this.f8147f = 0;
        this.f8148g = null;
        this.f8149h = f8141k;
        this.f8150i = null;
    }

    IconCompat(int i11) {
        this.f8144c = null;
        this.f8145d = null;
        this.f8146e = 0;
        this.f8147f = 0;
        this.f8148g = null;
        this.f8149h = f8141k;
        this.f8150i = null;
        this.f8142a = i11;
    }

    public static IconCompat b(Icon icon) {
        return a.a(icon);
    }

    public static IconCompat c(Icon icon) {
        if (a.d(icon) == 2 && a.b(icon) == 0) {
            return null;
        }
        return a.a(icon);
    }

    static Bitmap d(Bitmap bitmap, boolean z10) {
        int iMin = (int) (Math.min(bitmap.getWidth(), bitmap.getHeight()) * 0.6666667f);
        Bitmap bitmapCreateBitmap = Bitmap.createBitmap(iMin, iMin, Bitmap.Config.ARGB_8888);
        Canvas canvas = new Canvas(bitmapCreateBitmap);
        Paint paint = new Paint(3);
        float f11 = iMin;
        float f12 = 0.5f * f11;
        float f13 = 0.9166667f * f12;
        if (z10) {
            float f14 = 0.010416667f * f11;
            paint.setColor(0);
            paint.setShadowLayer(f14, 0.0f, f11 * 0.020833334f, 1023410176);
            canvas.drawCircle(f12, f12, f13, paint);
            paint.setShadowLayer(f14, 0.0f, 0.0f, 503316480);
            canvas.drawCircle(f12, f12, f13, paint);
            paint.clearShadowLayer();
        }
        paint.setColor(ViewCompat.MEASURED_STATE_MASK);
        Shader.TileMode tileMode = Shader.TileMode.CLAMP;
        BitmapShader bitmapShader = new BitmapShader(bitmap, tileMode, tileMode);
        Matrix matrix = new Matrix();
        matrix.setTranslate((-(bitmap.getWidth() - iMin)) / 2.0f, (-(bitmap.getHeight() - iMin)) / 2.0f);
        bitmapShader.setLocalMatrix(matrix);
        paint.setShader(bitmapShader);
        canvas.drawCircle(f12, f12, f13, paint);
        canvas.setBitmap(null);
        return bitmapCreateBitmap;
    }

    public static IconCompat e(Uri uri) {
        androidx.core.util.d.c(uri);
        return f(uri.toString());
    }

    public static IconCompat f(String str) {
        androidx.core.util.d.c(str);
        IconCompat iconCompat = new IconCompat(6);
        iconCompat.f8143b = str;
        return iconCompat;
    }

    public static IconCompat g(Bitmap bitmap) {
        androidx.core.util.d.c(bitmap);
        IconCompat iconCompat = new IconCompat(1);
        iconCompat.f8143b = bitmap;
        return iconCompat;
    }

    public static IconCompat h(Uri uri) {
        androidx.core.util.d.c(uri);
        return i(uri.toString());
    }

    public static IconCompat i(String str) {
        androidx.core.util.d.c(str);
        IconCompat iconCompat = new IconCompat(4);
        iconCompat.f8143b = str;
        return iconCompat;
    }

    public static IconCompat j(Context context, int i11) {
        androidx.core.util.d.c(context);
        return k(context.getResources(), context.getPackageName(), i11);
    }

    public static IconCompat k(Resources resources, String str, int i11) {
        androidx.core.util.d.c(str);
        if (i11 == 0) {
            throw new IllegalArgumentException("Drawable resource ID must not be 0");
        }
        IconCompat iconCompat = new IconCompat(2);
        iconCompat.f8146e = i11;
        if (resources != null) {
            try {
                iconCompat.f8143b = resources.getResourceName(i11);
            } catch (Resources.NotFoundException unused) {
                throw new IllegalArgumentException("Icon resource cannot be found");
            }
        } else {
            iconCompat.f8143b = str;
        }
        iconCompat.f8151j = str;
        return iconCompat;
    }

    static Resources o(Context context, String str) {
        if ("android".equals(str)) {
            return Resources.getSystem();
        }
        PackageManager packageManager = context.getPackageManager();
        try {
            ApplicationInfo applicationInfo = packageManager.getApplicationInfo(str, 8192);
            if (applicationInfo != null) {
                return packageManager.getResourcesForApplication(applicationInfo);
            }
            return null;
        } catch (PackageManager.NameNotFoundException e11) {
            Log.e("IconCompat", String.format("Unable to find pkg=%s for icon", str), e11);
            return null;
        }
    }

    private static String y(int i11) {
        switch (i11) {
            case 1:
                return "BITMAP";
            case 2:
                return "RESOURCE";
            case 3:
                return "DATA";
            case 4:
                return "URI";
            case 5:
                return "BITMAP_MASKABLE";
            case 6:
                return "URI_MASKABLE";
            default:
                return NetworkUtil.NETWORK_TYPE_UNKNOWN;
        }
    }

    public void a(Context context) {
        Object obj;
        if (this.f8142a != 2 || (obj = this.f8143b) == null) {
            return;
        }
        String str = (String) obj;
        if (str.contains(":")) {
            String str2 = str.split(":", -1)[1];
            String str3 = str2.split("/", -1)[0];
            String str4 = str2.split("/", -1)[1];
            String str5 = str.split(":", -1)[0];
            if ("0_resource_name_obfuscated".equals(str4)) {
                return;
            }
            String strN = n();
            int identifier = o(context, strN).getIdentifier(str4, str3, str5);
            if (this.f8146e != identifier) {
                StringBuilder sb2 = new StringBuilder();
                sb2.append("Id has changed for ");
                sb2.append(strN);
                sb2.append(" ");
                sb2.append(str);
                this.f8146e = identifier;
            }
        }
    }

    public Bitmap l() {
        int i11 = this.f8142a;
        if (i11 == -1) {
            Object obj = this.f8143b;
            if (obj instanceof Bitmap) {
                return (Bitmap) obj;
            }
            return null;
        }
        if (i11 == 1) {
            return (Bitmap) this.f8143b;
        }
        if (i11 == 5) {
            return d((Bitmap) this.f8143b, true);
        }
        throw new IllegalStateException("called getBitmap() on " + this);
    }

    public int m() {
        int i11 = this.f8142a;
        if (i11 == -1) {
            return a.b(this.f8143b);
        }
        if (i11 == 2) {
            return this.f8146e;
        }
        throw new IllegalStateException("called getResId() on " + this);
    }

    public String n() {
        int i11 = this.f8142a;
        if (i11 == -1) {
            return a.c(this.f8143b);
        }
        if (i11 == 2) {
            String str = this.f8151j;
            return (str == null || TextUtils.isEmpty(str)) ? ((String) this.f8143b).split(":", -1)[0] : this.f8151j;
        }
        throw new IllegalStateException("called getResPackage() on " + this);
    }

    public int p() {
        int i11 = this.f8142a;
        return i11 == -1 ? a.d(this.f8143b) : i11;
    }

    public Uri q() {
        int i11 = this.f8142a;
        if (i11 == -1) {
            return a.e(this.f8143b);
        }
        if (i11 == 4 || i11 == 6) {
            return Uri.parse((String) this.f8143b);
        }
        throw new IllegalStateException("called getUri() on " + this);
    }

    public InputStream r(Context context) {
        Uri uriQ = q();
        String scheme = uriQ.getScheme();
        if ("content".equals(scheme) || OfflineConstantsKt.OFFLINE_DOWNLOAD_SEARCH_MODE_FILE.equals(scheme)) {
            try {
                return context.getContentResolver().openInputStream(uriQ);
            } catch (Exception e11) {
                Log.w("IconCompat", "Unable to load image from URI: " + uriQ, e11);
                return null;
            }
        }
        try {
            return new FileInputStream(new File((String) this.f8143b));
        } catch (FileNotFoundException e12) {
            Log.w("IconCompat", "Unable to load image from path: " + uriQ, e12);
            return null;
        }
    }

    public Drawable s(Context context) {
        a(context);
        return a.f(x(context), context);
    }

    public void t() {
        this.f8149h = PorterDuff.Mode.valueOf(this.f8150i);
        switch (this.f8142a) {
            case -1:
                Parcelable parcelable = this.f8145d;
                if (parcelable == null) {
                    throw new IllegalArgumentException("Invalid icon");
                }
                this.f8143b = parcelable;
                return;
            case 0:
            default:
                return;
            case 1:
            case 5:
                Parcelable parcelable2 = this.f8145d;
                if (parcelable2 != null) {
                    this.f8143b = parcelable2;
                    return;
                }
                byte[] bArr = this.f8144c;
                this.f8143b = bArr;
                this.f8142a = 3;
                this.f8146e = 0;
                this.f8147f = bArr.length;
                return;
            case 2:
            case 4:
            case 6:
                String str = new String(this.f8144c, Charset.forName(C.UTF16_NAME));
                this.f8143b = str;
                if (this.f8142a == 2 && this.f8151j == null) {
                    this.f8151j = str.split(":", -1)[0];
                    return;
                }
                return;
            case 3:
                this.f8143b = this.f8144c;
                return;
        }
    }

    public String toString() {
        if (this.f8142a == -1) {
            return String.valueOf(this.f8143b);
        }
        StringBuilder sb2 = new StringBuilder("Icon(typ=");
        sb2.append(y(this.f8142a));
        switch (this.f8142a) {
            case 1:
            case 5:
                sb2.append(" size=");
                sb2.append(((Bitmap) this.f8143b).getWidth());
                sb2.append("x");
                sb2.append(((Bitmap) this.f8143b).getHeight());
                break;
            case 2:
                sb2.append(" pkg=");
                sb2.append(this.f8151j);
                sb2.append(" id=");
                sb2.append(String.format("0x%08x", Integer.valueOf(m())));
                break;
            case 3:
                sb2.append(" len=");
                sb2.append(this.f8146e);
                if (this.f8147f != 0) {
                    sb2.append(" off=");
                    sb2.append(this.f8147f);
                }
                break;
            case 4:
            case 6:
                sb2.append(" uri=");
                sb2.append(this.f8143b);
                break;
        }
        if (this.f8148g != null) {
            sb2.append(" tint=");
            sb2.append(this.f8148g);
        }
        if (this.f8149h != f8141k) {
            sb2.append(" mode=");
            sb2.append(this.f8149h);
        }
        sb2.append(")");
        return sb2.toString();
    }

    public void u(boolean z10) {
        this.f8150i = this.f8149h.name();
        switch (this.f8142a) {
            case -1:
                if (z10) {
                    throw new IllegalArgumentException("Can't serialize Icon created with IconCompat#createFromIcon");
                }
                this.f8145d = (Parcelable) this.f8143b;
                return;
            case 0:
            default:
                return;
            case 1:
            case 5:
                if (!z10) {
                    this.f8145d = (Parcelable) this.f8143b;
                    return;
                }
                Bitmap bitmap = (Bitmap) this.f8143b;
                ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
                bitmap.compress(Bitmap.CompressFormat.PNG, 90, byteArrayOutputStream);
                this.f8144c = byteArrayOutputStream.toByteArray();
                return;
            case 2:
                this.f8144c = ((String) this.f8143b).getBytes(Charset.forName(C.UTF16_NAME));
                return;
            case 3:
                this.f8144c = (byte[]) this.f8143b;
                return;
            case 4:
            case 6:
                this.f8144c = this.f8143b.toString().getBytes(Charset.forName(C.UTF16_NAME));
                return;
        }
    }

    public Bundle v() {
        Bundle bundle = new Bundle();
        switch (this.f8142a) {
            case -1:
                bundle.putParcelable("obj", (Parcelable) this.f8143b);
                break;
            case 0:
            default:
                throw new IllegalArgumentException("Invalid icon");
            case 1:
            case 5:
                bundle.putParcelable("obj", (Bitmap) this.f8143b);
                break;
            case 2:
            case 4:
            case 6:
                bundle.putString("obj", (String) this.f8143b);
                break;
            case 3:
                bundle.putByteArray("obj", (byte[]) this.f8143b);
                break;
        }
        bundle.putInt(NativeComponentConstants.KEY_COMPONENT_TYPE, this.f8142a);
        bundle.putInt("int1", this.f8146e);
        bundle.putInt("int2", this.f8147f);
        bundle.putString("string1", this.f8151j);
        ColorStateList colorStateList = this.f8148g;
        if (colorStateList != null) {
            bundle.putParcelable("tint_list", colorStateList);
        }
        PorterDuff.Mode mode = this.f8149h;
        if (mode != f8141k) {
            bundle.putString("tint_mode", mode.name());
        }
        return bundle;
    }

    public Icon w() {
        return x(null);
    }

    public Icon x(Context context) {
        return a.g(this, context);
    }
}
