package okhttp3;

import com.alibaba.sdk.android.oss.common.utils.HttpHeaders;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.util.concurrent.TimeUnit;
import kotlin.Deprecated;
import kotlin.Metadata;
import kotlin.jvm.JvmField;
import kotlin.jvm.JvmName;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.text.StringsKt;
import okhttp3.internal.Util;

/* JADX INFO: loaded from: classes7.dex */
@Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\n\n\u0002\u0010\u000e\n\u0002\b\u0011\u0018\u0000 !2\u00020\u0001:\u0002 !Bq\b\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\u0006\u0010\b\u001a\u00020\u0003\u0012\u0006\u0010\t\u001a\u00020\u0003\u0012\u0006\u0010\n\u001a\u00020\u0003\u0012\u0006\u0010\u000b\u001a\u00020\u0006\u0012\u0006\u0010\f\u001a\u00020\u0006\u0012\u0006\u0010\r\u001a\u00020\u0003\u0012\u0006\u0010\u000e\u001a\u00020\u0003\u0012\u0006\u0010\u000f\u001a\u00020\u0003\u0012\b\u0010\u0010\u001a\u0004\u0018\u00010\u0011¢\u0006\u0002\u0010\u0012J\r\u0010\u000f\u001a\u00020\u0003H\u0007¢\u0006\u0002\b\u0015J\r\u0010\u0005\u001a\u00020\u0006H\u0007¢\u0006\u0002\b\u0016J\r\u0010\u000b\u001a\u00020\u0006H\u0007¢\u0006\u0002\b\u0017J\r\u0010\f\u001a\u00020\u0006H\u0007¢\u0006\u0002\b\u0018J\r\u0010\n\u001a\u00020\u0003H\u0007¢\u0006\u0002\b\u0019J\r\u0010\u0002\u001a\u00020\u0003H\u0007¢\u0006\u0002\b\u001aJ\r\u0010\u0004\u001a\u00020\u0003H\u0007¢\u0006\u0002\b\u001bJ\r\u0010\u000e\u001a\u00020\u0003H\u0007¢\u0006\u0002\b\u001cJ\r\u0010\r\u001a\u00020\u0003H\u0007¢\u0006\u0002\b\u001dJ\r\u0010\u0007\u001a\u00020\u0006H\u0007¢\u0006\u0002\b\u001eJ\b\u0010\u001f\u001a\u00020\u0011H\u0016R\u0010\u0010\u0010\u001a\u0004\u0018\u00010\u0011X\u0082\u000e¢\u0006\u0002\n\u0000R\u0013\u0010\u000f\u001a\u00020\u00038\u0007¢\u0006\b\n\u0000\u001a\u0004\b\u000f\u0010\u0013R\u0011\u0010\b\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\b\u0010\u0013R\u0011\u0010\t\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\u0013R\u0013\u0010\u0005\u001a\u00020\u00068\u0007¢\u0006\b\n\u0000\u001a\u0004\b\u0005\u0010\u0014R\u0013\u0010\u000b\u001a\u00020\u00068\u0007¢\u0006\b\n\u0000\u001a\u0004\b\u000b\u0010\u0014R\u0013\u0010\f\u001a\u00020\u00068\u0007¢\u0006\b\n\u0000\u001a\u0004\b\f\u0010\u0014R\u0013\u0010\n\u001a\u00020\u00038\u0007¢\u0006\b\n\u0000\u001a\u0004\b\n\u0010\u0013R\u0013\u0010\u0002\u001a\u00020\u00038\u0007¢\u0006\b\n\u0000\u001a\u0004\b\u0002\u0010\u0013R\u0013\u0010\u0004\u001a\u00020\u00038\u0007¢\u0006\b\n\u0000\u001a\u0004\b\u0004\u0010\u0013R\u0013\u0010\u000e\u001a\u00020\u00038\u0007¢\u0006\b\n\u0000\u001a\u0004\b\u000e\u0010\u0013R\u0013\u0010\r\u001a\u00020\u00038\u0007¢\u0006\b\n\u0000\u001a\u0004\b\r\u0010\u0013R\u0013\u0010\u0007\u001a\u00020\u00068\u0007¢\u0006\b\n\u0000\u001a\u0004\b\u0007\u0010\u0014¨\u0006\""}, d2 = {"Lokhttp3/CacheControl;", "", "noCache", "", "noStore", "maxAgeSeconds", "", "sMaxAgeSeconds", "isPrivate", "isPublic", "mustRevalidate", "maxStaleSeconds", "minFreshSeconds", "onlyIfCached", "noTransform", "immutable", "headerValue", "", "(ZZIIZZZIIZZZLjava/lang/String;)V", "()Z", "()I", "-deprecated_immutable", "-deprecated_maxAgeSeconds", "-deprecated_maxStaleSeconds", "-deprecated_minFreshSeconds", "-deprecated_mustRevalidate", "-deprecated_noCache", "-deprecated_noStore", "-deprecated_noTransform", "-deprecated_onlyIfCached", "-deprecated_sMaxAgeSeconds", "toString", "Builder", "Companion", "okhttp"}, k = 1, mv = {1, 8, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final class CacheControl {
    private String headerValue;
    private final boolean immutable;
    private final boolean isPrivate;
    private final boolean isPublic;
    private final int maxAgeSeconds;
    private final int maxStaleSeconds;
    private final int minFreshSeconds;
    private final boolean mustRevalidate;
    private final boolean noCache;
    private final boolean noStore;
    private final boolean noTransform;
    private final boolean onlyIfCached;
    private final int sMaxAgeSeconds;

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);

    @JvmField
    public static final CacheControl FORCE_NETWORK = new Builder().noCache().build();

    @JvmField
    public static final CacheControl FORCE_CACHE = new Builder().onlyIfCached().maxStale(Integer.MAX_VALUE, TimeUnit.SECONDS).build();

    @Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\b\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\t\n\u0000\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\u0006\u0010\r\u001a\u00020\u000eJ\u0006\u0010\u0003\u001a\u00020\u0000J\u0016\u0010\u000f\u001a\u00020\u00002\u0006\u0010\u000f\u001a\u00020\u00062\u0006\u0010\u0010\u001a\u00020\u0011J\u0016\u0010\u0012\u001a\u00020\u00002\u0006\u0010\u0012\u001a\u00020\u00062\u0006\u0010\u0010\u001a\u00020\u0011J\u0016\u0010\u0013\u001a\u00020\u00002\u0006\u0010\u0013\u001a\u00020\u00062\u0006\u0010\u0010\u001a\u00020\u0011J\u0006\u0010\t\u001a\u00020\u0000J\u0006\u0010\n\u001a\u00020\u0000J\u0006\u0010\u000b\u001a\u00020\u0000J\u0006\u0010\f\u001a\u00020\u0000J\f\u0010\u0014\u001a\u00020\u0006*\u00020\u0015H\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0006X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\b\u001a\u00020\u0006X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\u0004X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u0004X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\u0004X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\f\u001a\u00020\u0004X\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006\u0016"}, d2 = {"Lokhttp3/CacheControl$Builder;", "", "()V", "immutable", "", "maxAgeSeconds", "", "maxStaleSeconds", "minFreshSeconds", "noCache", "noStore", "noTransform", "onlyIfCached", "build", "Lokhttp3/CacheControl;", "maxAge", "timeUnit", "Ljava/util/concurrent/TimeUnit;", "maxStale", "minFresh", "clampToInt", "", "okhttp"}, k = 1, mv = {1, 8, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
    @SourceDebugExtension
    public static final class Builder {
        private boolean immutable;
        private int maxAgeSeconds = -1;
        private int maxStaleSeconds = -1;
        private int minFreshSeconds = -1;
        private boolean noCache;
        private boolean noStore;
        private boolean noTransform;
        private boolean onlyIfCached;

        private final int clampToInt(long j11) {
            if (j11 > 2147483647L) {
                return Integer.MAX_VALUE;
            }
            return (int) j11;
        }

        public final CacheControl build() {
            return new CacheControl(this.noCache, this.noStore, this.maxAgeSeconds, -1, false, false, false, this.maxStaleSeconds, this.minFreshSeconds, this.onlyIfCached, this.noTransform, this.immutable, null, null);
        }

        public final Builder immutable() {
            this.immutable = true;
            return this;
        }

        public final Builder maxAge(int maxAge, TimeUnit timeUnit) {
            Intrinsics.h(timeUnit, "timeUnit");
            if (maxAge >= 0) {
                this.maxAgeSeconds = clampToInt(timeUnit.toSeconds(maxAge));
                return this;
            }
            throw new IllegalArgumentException(("maxAge < 0: " + maxAge).toString());
        }

        public final Builder maxStale(int maxStale, TimeUnit timeUnit) {
            Intrinsics.h(timeUnit, "timeUnit");
            if (maxStale >= 0) {
                this.maxStaleSeconds = clampToInt(timeUnit.toSeconds(maxStale));
                return this;
            }
            throw new IllegalArgumentException(("maxStale < 0: " + maxStale).toString());
        }

        public final Builder minFresh(int minFresh, TimeUnit timeUnit) {
            Intrinsics.h(timeUnit, "timeUnit");
            if (minFresh >= 0) {
                this.minFreshSeconds = clampToInt(timeUnit.toSeconds(minFresh));
                return this;
            }
            throw new IllegalArgumentException(("minFresh < 0: " + minFresh).toString());
        }

        public final Builder noCache() {
            this.noCache = true;
            return this;
        }

        public final Builder noStore() {
            this.noStore = true;
            return this;
        }

        public final Builder noTransform() {
            this.noTransform = true;
            return this;
        }

        public final Builder onlyIfCached() {
            this.onlyIfCached = true;
            return this;
        }
    }

    @Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\u0010\u000e\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0010\u0010\u0006\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\bH\u0007J\u001e\u0010\t\u001a\u00020\n*\u00020\u000b2\u0006\u0010\f\u001a\u00020\u000b2\b\b\u0002\u0010\r\u001a\u00020\nH\u0002R\u0010\u0010\u0003\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u0005\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000¨\u0006\u000e"}, d2 = {"Lokhttp3/CacheControl$Companion;", "", "()V", "FORCE_CACHE", "Lokhttp3/CacheControl;", "FORCE_NETWORK", "parse", "headers", "Lokhttp3/Headers;", "indexOfElement", "", "", "characters", "startIndex", "okhttp"}, k = 1, mv = {1, 8, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private final int indexOfElement(String str, String str2, int i11) {
            int length = str.length();
            while (i11 < length) {
                if (StringsKt.b0(str2, str.charAt(i11), false, 2, null)) {
                    return i11;
                }
                i11++;
            }
            return str.length();
        }

        static /* synthetic */ int indexOfElement$default(Companion companion, String str, String str2, int i11, int i12, Object obj) {
            if ((i12 & 2) != 0) {
                i11 = 0;
            }
            return companion.indexOfElement(str, str2, i11);
        }

        /* JADX WARN: Code duplicated, block: B:15:0x004b  */
        /* JADX WARN: Code duplicated, block: B:17:0x0068  */
        /* JADX WARN: Code duplicated, block: B:28:0x00c1  */
        /* JADX WARN: Code duplicated, block: B:32:0x00d0  */
        /* JADX WARN: Code duplicated, block: B:34:0x00d8  */
        /* JADX WARN: Code duplicated, block: B:36:0x00e0  */
        /* JADX WARN: Code duplicated, block: B:37:0x00e5  */
        /* JADX WARN: Code duplicated, block: B:39:0x00ed  */
        /* JADX WARN: Code duplicated, block: B:41:0x00f6  */
        /* JADX WARN: Code duplicated, block: B:43:0x00fe  */
        /* JADX WARN: Code duplicated, block: B:44:0x0104  */
        /* JADX WARN: Code duplicated, block: B:46:0x010c  */
        /* JADX WARN: Code duplicated, block: B:47:0x0111  */
        /* JADX WARN: Code duplicated, block: B:49:0x0119  */
        /* JADX WARN: Code duplicated, block: B:50:0x011e  */
        /* JADX WARN: Code duplicated, block: B:52:0x0126  */
        /* JADX WARN: Code duplicated, block: B:53:0x012c  */
        /* JADX WARN: Code duplicated, block: B:55:0x0134  */
        /* JADX WARN: Code duplicated, block: B:56:0x013c  */
        /* JADX WARN: Code duplicated, block: B:58:0x0144  */
        /* JADX WARN: Code duplicated, block: B:59:0x014a  */
        /* JADX WARN: Code duplicated, block: B:61:0x0153  */
        /* JADX WARN: Code duplicated, block: B:62:0x015a  */
        /* JADX WARN: Code duplicated, block: B:64:0x0162  */
        /* JADX WARN: Code duplicated, block: B:65:0x0169  */
        /* JADX WARN: Code duplicated, block: B:67:0x0171  */
        @JvmStatic
        public final CacheControl parse(Headers headers) {
            int iIndexOfElement;
            int iIndexOfElement2;
            String string;
            int i11;
            String string2;
            Headers headers2 = headers;
            Intrinsics.h(headers2, "headers");
            int size = headers.size();
            boolean z10 = true;
            boolean z11 = true;
            int i12 = 0;
            String str = null;
            boolean z12 = false;
            boolean z13 = false;
            int nonNegativeInt = -1;
            int nonNegativeInt2 = -1;
            boolean z14 = false;
            boolean z15 = false;
            boolean z16 = false;
            int nonNegativeInt3 = -1;
            int nonNegativeInt4 = -1;
            boolean z17 = false;
            boolean z18 = false;
            boolean z19 = false;
            while (i12 < size) {
                String strName = headers2.name(i12);
                String strValue = headers2.value(i12);
                if (StringsKt.H(strName, HttpHeaders.CACHE_CONTROL, z10)) {
                    if (str == null) {
                        str = strValue;
                    }
                    iIndexOfElement = 0;
                    while (iIndexOfElement < strValue.length()) {
                        iIndexOfElement2 = indexOfElement(strValue, "=,;", iIndexOfElement);
                        String strSubstring = strValue.substring(iIndexOfElement, iIndexOfElement2);
                        Intrinsics.g(strSubstring, "this as java.lang.String…ing(startIndex, endIndex)");
                        string = StringsKt.n1(strSubstring).toString();
                        if (iIndexOfElement2 != strValue.length()) {
                            i11 = size;
                            if (strValue.charAt(iIndexOfElement2) == ',' && strValue.charAt(iIndexOfElement2) != ';') {
                                int iIndexOfNonWhitespace = Util.indexOfNonWhitespace(strValue, iIndexOfElement2 + 1);
                                if (iIndexOfNonWhitespace >= strValue.length() || strValue.charAt(iIndexOfNonWhitespace) != '\"') {
                                    iIndexOfElement = indexOfElement(strValue, ",;", iIndexOfNonWhitespace);
                                    String strSubstring2 = strValue.substring(iIndexOfNonWhitespace, iIndexOfElement);
                                    Intrinsics.g(strSubstring2, "this as java.lang.String…ing(startIndex, endIndex)");
                                    string2 = StringsKt.n1(strSubstring2).toString();
                                } else {
                                    int i13 = iIndexOfNonWhitespace + 1;
                                    int iN0 = StringsKt.n0(strValue, '\"', i13, false, 4, null);
                                    string2 = strValue.substring(i13, iN0);
                                    Intrinsics.g(string2, "this as java.lang.String…ing(startIndex, endIndex)");
                                    iIndexOfElement = iN0 + 1;
                                }
                            }
                            z10 = true;
                            if (StringsKt.H("no-cache", string, true)) {
                                z12 = true;
                            } else if (StringsKt.H("no-store", string, true)) {
                                z13 = true;
                            } else if (StringsKt.H("max-age", string, true)) {
                                nonNegativeInt = Util.toNonNegativeInt(string2, -1);
                            } else if (StringsKt.H("s-maxage", string, true)) {
                                nonNegativeInt2 = Util.toNonNegativeInt(string2, -1);
                            } else if (StringsKt.H("private", string, true)) {
                                z14 = true;
                            } else if (StringsKt.H("public", string, true)) {
                                z15 = true;
                            } else if (StringsKt.H("must-revalidate", string, true)) {
                                z16 = true;
                            } else if (StringsKt.H("max-stale", string, true)) {
                                nonNegativeInt3 = Util.toNonNegativeInt(string2, Integer.MAX_VALUE);
                            } else if (StringsKt.H("min-fresh", string, true)) {
                                nonNegativeInt4 = Util.toNonNegativeInt(string2, -1);
                            } else if (StringsKt.H("only-if-cached", string, true)) {
                                z17 = true;
                            } else if (StringsKt.H("no-transform", string, true)) {
                                z18 = true;
                            } else if (StringsKt.H("immutable", string, true)) {
                                z19 = true;
                            }
                            size = i11;
                        } else {
                            i11 = size;
                        }
                        iIndexOfElement = iIndexOfElement2 + 1;
                        string2 = null;
                        z10 = true;
                        if (StringsKt.H("no-cache", string, true)) {
                            z12 = true;
                        } else if (StringsKt.H("no-store", string, true)) {
                            z13 = true;
                        } else if (StringsKt.H("max-age", string, true)) {
                            nonNegativeInt = Util.toNonNegativeInt(string2, -1);
                        } else if (StringsKt.H("s-maxage", string, true)) {
                            nonNegativeInt2 = Util.toNonNegativeInt(string2, -1);
                        } else if (StringsKt.H("private", string, true)) {
                            z14 = true;
                        } else if (StringsKt.H("public", string, true)) {
                            z15 = true;
                        } else if (StringsKt.H("must-revalidate", string, true)) {
                            z16 = true;
                        } else if (StringsKt.H("max-stale", string, true)) {
                            nonNegativeInt3 = Util.toNonNegativeInt(string2, Integer.MAX_VALUE);
                        } else if (StringsKt.H("min-fresh", string, true)) {
                            nonNegativeInt4 = Util.toNonNegativeInt(string2, -1);
                        } else if (StringsKt.H("only-if-cached", string, true)) {
                            z17 = true;
                        } else if (StringsKt.H("no-transform", string, true)) {
                            z18 = true;
                        } else if (StringsKt.H("immutable", string, true)) {
                            z19 = true;
                        }
                        size = i11;
                    }
                    i12++;
                    headers2 = headers;
                    size = size;
                } else {
                    if (StringsKt.H(strName, "Pragma", z10)) {
                    }
                    i12++;
                    headers2 = headers;
                    size = size;
                }
                z11 = false;
                iIndexOfElement = 0;
                while (iIndexOfElement < strValue.length()) {
                    iIndexOfElement2 = indexOfElement(strValue, "=,;", iIndexOfElement);
                    String strSubstring3 = strValue.substring(iIndexOfElement, iIndexOfElement2);
                    Intrinsics.g(strSubstring3, "this as java.lang.String…ing(startIndex, endIndex)");
                    string = StringsKt.n1(strSubstring3).toString();
                    if (iIndexOfElement2 != strValue.length()) {
                        i11 = size;
                        if (strValue.charAt(iIndexOfElement2) == ',') {
                        }
                        z10 = true;
                        if (StringsKt.H("no-cache", string, true)) {
                            z12 = true;
                        } else if (StringsKt.H("no-store", string, true)) {
                            z13 = true;
                        } else if (StringsKt.H("max-age", string, true)) {
                            nonNegativeInt = Util.toNonNegativeInt(string2, -1);
                        } else if (StringsKt.H("s-maxage", string, true)) {
                            nonNegativeInt2 = Util.toNonNegativeInt(string2, -1);
                        } else if (StringsKt.H("private", string, true)) {
                            z14 = true;
                        } else if (StringsKt.H("public", string, true)) {
                            z15 = true;
                        } else if (StringsKt.H("must-revalidate", string, true)) {
                            z16 = true;
                        } else if (StringsKt.H("max-stale", string, true)) {
                            nonNegativeInt3 = Util.toNonNegativeInt(string2, Integer.MAX_VALUE);
                        } else if (StringsKt.H("min-fresh", string, true)) {
                            nonNegativeInt4 = Util.toNonNegativeInt(string2, -1);
                        } else if (StringsKt.H("only-if-cached", string, true)) {
                            z17 = true;
                        } else if (StringsKt.H("no-transform", string, true)) {
                            z18 = true;
                        } else if (StringsKt.H("immutable", string, true)) {
                            z19 = true;
                        }
                        size = i11;
                    } else {
                        i11 = size;
                    }
                    iIndexOfElement = iIndexOfElement2 + 1;
                    string2 = null;
                    z10 = true;
                    if (StringsKt.H("no-cache", string, true)) {
                        z12 = true;
                    } else if (StringsKt.H("no-store", string, true)) {
                        z13 = true;
                    } else if (StringsKt.H("max-age", string, true)) {
                        nonNegativeInt = Util.toNonNegativeInt(string2, -1);
                    } else if (StringsKt.H("s-maxage", string, true)) {
                        nonNegativeInt2 = Util.toNonNegativeInt(string2, -1);
                    } else if (StringsKt.H("private", string, true)) {
                        z14 = true;
                    } else if (StringsKt.H("public", string, true)) {
                        z15 = true;
                    } else if (StringsKt.H("must-revalidate", string, true)) {
                        z16 = true;
                    } else if (StringsKt.H("max-stale", string, true)) {
                        nonNegativeInt3 = Util.toNonNegativeInt(string2, Integer.MAX_VALUE);
                    } else if (StringsKt.H("min-fresh", string, true)) {
                        nonNegativeInt4 = Util.toNonNegativeInt(string2, -1);
                    } else if (StringsKt.H("only-if-cached", string, true)) {
                        z17 = true;
                    } else if (StringsKt.H("no-transform", string, true)) {
                        z18 = true;
                    } else if (StringsKt.H("immutable", string, true)) {
                        z19 = true;
                    }
                    size = i11;
                }
                i12++;
                headers2 = headers;
                size = size;
            }
            return new CacheControl(z12, z13, nonNegativeInt, nonNegativeInt2, z14, z15, z16, nonNegativeInt3, nonNegativeInt4, z17, z18, z19, !z11 ? null : str, null);
        }
    }

    private CacheControl(boolean z10, boolean z11, int i11, int i12, boolean z12, boolean z13, boolean z14, int i13, int i14, boolean z15, boolean z16, boolean z17, String str) {
        this.noCache = z10;
        this.noStore = z11;
        this.maxAgeSeconds = i11;
        this.sMaxAgeSeconds = i12;
        this.isPrivate = z12;
        this.isPublic = z13;
        this.mustRevalidate = z14;
        this.maxStaleSeconds = i13;
        this.minFreshSeconds = i14;
        this.onlyIfCached = z15;
        this.noTransform = z16;
        this.immutable = z17;
        this.headerValue = str;
    }

    public /* synthetic */ CacheControl(boolean z10, boolean z11, int i11, int i12, boolean z12, boolean z13, boolean z14, int i13, int i14, boolean z15, boolean z16, boolean z17, String str, DefaultConstructorMarker defaultConstructorMarker) {
        this(z10, z11, i11, i12, z12, z13, z14, i13, i14, z15, z16, z17, str);
    }

    @JvmStatic
    public static final CacheControl parse(Headers headers) {
        return INSTANCE.parse(headers);
    }

    @Deprecated
    @JvmName
    /* JADX INFO: renamed from: -deprecated_immutable, reason: not valid java name and from getter */
    public final boolean getImmutable() {
        return this.immutable;
    }

    @Deprecated
    @JvmName
    /* JADX INFO: renamed from: -deprecated_maxAgeSeconds, reason: not valid java name and from getter */
    public final int getMaxAgeSeconds() {
        return this.maxAgeSeconds;
    }

    @Deprecated
    @JvmName
    /* JADX INFO: renamed from: -deprecated_maxStaleSeconds, reason: not valid java name and from getter */
    public final int getMaxStaleSeconds() {
        return this.maxStaleSeconds;
    }

    @Deprecated
    @JvmName
    /* JADX INFO: renamed from: -deprecated_minFreshSeconds, reason: not valid java name and from getter */
    public final int getMinFreshSeconds() {
        return this.minFreshSeconds;
    }

    @Deprecated
    @JvmName
    /* JADX INFO: renamed from: -deprecated_mustRevalidate, reason: not valid java name and from getter */
    public final boolean getMustRevalidate() {
        return this.mustRevalidate;
    }

    @Deprecated
    @JvmName
    /* JADX INFO: renamed from: -deprecated_noCache, reason: not valid java name and from getter */
    public final boolean getNoCache() {
        return this.noCache;
    }

    @Deprecated
    @JvmName
    /* JADX INFO: renamed from: -deprecated_noStore, reason: not valid java name and from getter */
    public final boolean getNoStore() {
        return this.noStore;
    }

    @Deprecated
    @JvmName
    /* JADX INFO: renamed from: -deprecated_noTransform, reason: not valid java name and from getter */
    public final boolean getNoTransform() {
        return this.noTransform;
    }

    @Deprecated
    @JvmName
    /* JADX INFO: renamed from: -deprecated_onlyIfCached, reason: not valid java name and from getter */
    public final boolean getOnlyIfCached() {
        return this.onlyIfCached;
    }

    @Deprecated
    @JvmName
    /* JADX INFO: renamed from: -deprecated_sMaxAgeSeconds, reason: not valid java name and from getter */
    public final int getSMaxAgeSeconds() {
        return this.sMaxAgeSeconds;
    }

    @JvmName
    public final boolean immutable() {
        return this.immutable;
    }

    /* JADX INFO: renamed from: isPrivate, reason: from getter */
    public final boolean getIsPrivate() {
        return this.isPrivate;
    }

    /* JADX INFO: renamed from: isPublic, reason: from getter */
    public final boolean getIsPublic() {
        return this.isPublic;
    }

    @JvmName
    public final int maxAgeSeconds() {
        return this.maxAgeSeconds;
    }

    @JvmName
    public final int maxStaleSeconds() {
        return this.maxStaleSeconds;
    }

    @JvmName
    public final int minFreshSeconds() {
        return this.minFreshSeconds;
    }

    @JvmName
    public final boolean mustRevalidate() {
        return this.mustRevalidate;
    }

    @JvmName
    public final boolean noCache() {
        return this.noCache;
    }

    @JvmName
    public final boolean noStore() {
        return this.noStore;
    }

    @JvmName
    public final boolean noTransform() {
        return this.noTransform;
    }

    @JvmName
    public final boolean onlyIfCached() {
        return this.onlyIfCached;
    }

    @JvmName
    public final int sMaxAgeSeconds() {
        return this.sMaxAgeSeconds;
    }

    public String toString() {
        String str = this.headerValue;
        if (str != null) {
            return str;
        }
        StringBuilder sb2 = new StringBuilder();
        if (this.noCache) {
            sb2.append("no-cache, ");
        }
        if (this.noStore) {
            sb2.append("no-store, ");
        }
        if (this.maxAgeSeconds != -1) {
            sb2.append("max-age=");
            sb2.append(this.maxAgeSeconds);
            sb2.append(", ");
        }
        if (this.sMaxAgeSeconds != -1) {
            sb2.append("s-maxage=");
            sb2.append(this.sMaxAgeSeconds);
            sb2.append(", ");
        }
        if (this.isPrivate) {
            sb2.append("private, ");
        }
        if (this.isPublic) {
            sb2.append("public, ");
        }
        if (this.mustRevalidate) {
            sb2.append("must-revalidate, ");
        }
        if (this.maxStaleSeconds != -1) {
            sb2.append("max-stale=");
            sb2.append(this.maxStaleSeconds);
            sb2.append(", ");
        }
        if (this.minFreshSeconds != -1) {
            sb2.append("min-fresh=");
            sb2.append(this.minFreshSeconds);
            sb2.append(", ");
        }
        if (this.onlyIfCached) {
            sb2.append("only-if-cached, ");
        }
        if (this.noTransform) {
            sb2.append("no-transform, ");
        }
        if (this.immutable) {
            sb2.append("immutable, ");
        }
        if (sb2.length() == 0) {
            return "";
        }
        sb2.delete(sb2.length() - 2, sb2.length());
        String string = sb2.toString();
        Intrinsics.g(string, "StringBuilder().apply(builderAction).toString()");
        this.headerValue = string;
        return string;
    }
}
