package okhttp3;

import com.cloud.tmc.offline.download.constants.OfflineConstantsKt;
import com.google.android.gms.measurement.api.AppMeasurementSdk;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.time.Instant;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Date;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.Set;
import java.util.TreeMap;
import java.util.TreeSet;
import kotlin.Deprecated;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.TuplesKt;
import kotlin.collections.CollectionsKt;
import kotlin.internal.ProgressionUtilKt;
import kotlin.jvm.JvmName;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.internal.ArrayIteratorKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.jvm.internal.StringCompanionObject;
import kotlin.jvm.internal.markers.KMappedMarker;
import kotlin.text.StringsKt;
import okhttp3.internal.Util;
import okhttp3.internal.http.DatesKt;
import org.codehaus.mojo.animal_sniffer.IgnoreJRERequirement;

/* JADX INFO: loaded from: classes7.dex */
@Metadata(d1 = {"\u0000f\n\u0002\u0018\u0002\n\u0002\u0010\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0011\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010(\n\u0002\b\u0002\n\u0002\u0010\"\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010$\n\u0002\u0010 \n\u0002\b\u0006\u0018\u0000 '2\u0014\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u00030\u00020\u0001:\u0002&'B\u0015\b\u0002\u0012\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0005¢\u0006\u0002\u0010\u0006J\u0006\u0010\u000b\u001a\u00020\fJ\u0013\u0010\r\u001a\u00020\u000e2\b\u0010\u000f\u001a\u0004\u0018\u00010\u0010H\u0096\u0002J\u0013\u0010\u0011\u001a\u0004\u0018\u00010\u00032\u0006\u0010\u0012\u001a\u00020\u0003H\u0086\u0002J\u0010\u0010\u0013\u001a\u0004\u0018\u00010\u00142\u0006\u0010\u0012\u001a\u00020\u0003J\u0012\u0010\u0015\u001a\u0004\u0018\u00010\u00162\u0006\u0010\u0012\u001a\u00020\u0003H\u0007J\b\u0010\u0017\u001a\u00020\tH\u0016J\u001b\u0010\u0018\u001a\u0014\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u00030\u00020\u0019H\u0096\u0002J\u000e\u0010\u0012\u001a\u00020\u00032\u0006\u0010\u001a\u001a\u00020\tJ\f\u0010\u001b\u001a\b\u0012\u0004\u0012\u00020\u00030\u001cJ\u0006\u0010\u001d\u001a\u00020\u001eJ\r\u0010\b\u001a\u00020\tH\u0007¢\u0006\u0002\b\u001fJ\u0018\u0010 \u001a\u0014\u0012\u0004\u0012\u00020\u0003\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00030\"0!J\b\u0010#\u001a\u00020\u0003H\u0016J\u000e\u0010$\u001a\u00020\u00032\u0006\u0010\u001a\u001a\u00020\tJ\u0014\u0010%\u001a\b\u0012\u0004\u0012\u00020\u00030\"2\u0006\u0010\u0012\u001a\u00020\u0003R\u0016\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0005X\u0082\u0004¢\u0006\u0004\n\u0002\u0010\u0007R\u0011\u0010\b\u001a\u00020\t8G¢\u0006\u0006\u001a\u0004\b\b\u0010\n¨\u0006("}, d2 = {"Lokhttp3/Headers;", "", "Lkotlin/Pair;", "", "namesAndValues", "", "([Ljava/lang/String;)V", "[Ljava/lang/String;", "size", "", "()I", "byteCount", "", "equals", "", OfflineConstantsKt.OFFLINE_DOWNLOAD_CHANNEL_MODE_OTHER, "", "get", "name", "getDate", "Ljava/util/Date;", "getInstant", "Ljava/time/Instant;", "hashCode", "iterator", "", "index", "names", "", "newBuilder", "Lokhttp3/Headers$Builder;", "-deprecated_size", "toMultimap", "", "", "toString", AppMeasurementSdk.ConditionalUserProperty.VALUE, "values", "Builder", "Companion", "okhttp"}, k = 1, mv = {1, 8, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final class Headers implements Iterable<Pair<? extends String, ? extends String>>, KMappedMarker {

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private final String[] namesAndValues;

    @Metadata(d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010!\n\u0002\u0010\u000e\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\b\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\u000e\u0010\b\u001a\u00020\u00002\u0006\u0010\t\u001a\u00020\u0005J\u0018\u0010\b\u001a\u00020\u00002\u0006\u0010\n\u001a\u00020\u00052\u0006\u0010\u000b\u001a\u00020\fH\u0007J\u0016\u0010\b\u001a\u00020\u00002\u0006\u0010\n\u001a\u00020\u00052\u0006\u0010\u000b\u001a\u00020\rJ\u0016\u0010\b\u001a\u00020\u00002\u0006\u0010\n\u001a\u00020\u00052\u0006\u0010\u000b\u001a\u00020\u0005J\u000e\u0010\u000e\u001a\u00020\u00002\u0006\u0010\u000f\u001a\u00020\u0010J\u0015\u0010\u0011\u001a\u00020\u00002\u0006\u0010\t\u001a\u00020\u0005H\u0000¢\u0006\u0002\b\u0012J\u001d\u0010\u0011\u001a\u00020\u00002\u0006\u0010\n\u001a\u00020\u00052\u0006\u0010\u000b\u001a\u00020\u0005H\u0000¢\u0006\u0002\b\u0012J\u0016\u0010\u0013\u001a\u00020\u00002\u0006\u0010\n\u001a\u00020\u00052\u0006\u0010\u000b\u001a\u00020\u0005J\u0006\u0010\u0014\u001a\u00020\u0010J\u0013\u0010\u0015\u001a\u0004\u0018\u00010\u00052\u0006\u0010\n\u001a\u00020\u0005H\u0086\u0002J\u000e\u0010\u0016\u001a\u00020\u00002\u0006\u0010\n\u001a\u00020\u0005J\u0019\u0010\u0017\u001a\u00020\u00002\u0006\u0010\n\u001a\u00020\u00052\u0006\u0010\u000b\u001a\u00020\fH\u0087\u0002J\u0019\u0010\u0017\u001a\u00020\u00002\u0006\u0010\n\u001a\u00020\u00052\u0006\u0010\u000b\u001a\u00020\rH\u0086\u0002J\u0019\u0010\u0017\u001a\u00020\u00002\u0006\u0010\n\u001a\u00020\u00052\u0006\u0010\u000b\u001a\u00020\u0005H\u0086\u0002R\u001a\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004X\u0080\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007¨\u0006\u0018"}, d2 = {"Lokhttp3/Headers$Builder;", "", "()V", "namesAndValues", "", "", "getNamesAndValues$okhttp", "()Ljava/util/List;", "add", "line", "name", AppMeasurementSdk.ConditionalUserProperty.VALUE, "Ljava/time/Instant;", "Ljava/util/Date;", "addAll", "headers", "Lokhttp3/Headers;", "addLenient", "addLenient$okhttp", "addUnsafeNonAscii", "build", "get", "removeAll", "set", "okhttp"}, k = 1, mv = {1, 8, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
    @SourceDebugExtension
    public static final class Builder {
        private final List<String> namesAndValues = new ArrayList(20);

        public final Builder add(String line) {
            Intrinsics.h(line, "line");
            int iN0 = StringsKt.n0(line, ':', 0, false, 6, null);
            if (iN0 == -1) {
                throw new IllegalArgumentException(("Unexpected header: " + line).toString());
            }
            String strSubstring = line.substring(0, iN0);
            Intrinsics.g(strSubstring, "this as java.lang.String…ing(startIndex, endIndex)");
            String string = StringsKt.n1(strSubstring).toString();
            String strSubstring2 = line.substring(iN0 + 1);
            Intrinsics.g(strSubstring2, "this as java.lang.String).substring(startIndex)");
            add(string, strSubstring2);
            return this;
        }

        public final Builder add(String name, String value) {
            Intrinsics.h(name, "name");
            Intrinsics.h(value, "value");
            Companion companion = Headers.INSTANCE;
            companion.checkName(name);
            companion.checkValue(value, name);
            addLenient$okhttp(name, value);
            return this;
        }

        @IgnoreJRERequirement
        public final Builder add(String name, Instant value) {
            Intrinsics.h(name, "name");
            Intrinsics.h(value, "value");
            add(name, new Date(value.toEpochMilli()));
            return this;
        }

        public final Builder add(String name, Date value) {
            Intrinsics.h(name, "name");
            Intrinsics.h(value, "value");
            add(name, DatesKt.toHttpDateString(value));
            return this;
        }

        public final Builder addAll(Headers headers) {
            Intrinsics.h(headers, "headers");
            int size = headers.size();
            for (int i11 = 0; i11 < size; i11++) {
                addLenient$okhttp(headers.name(i11), headers.value(i11));
            }
            return this;
        }

        public final Builder addLenient$okhttp(String line) {
            Intrinsics.h(line, "line");
            int iN0 = StringsKt.n0(line, ':', 1, false, 4, null);
            if (iN0 != -1) {
                String strSubstring = line.substring(0, iN0);
                Intrinsics.g(strSubstring, "this as java.lang.String…ing(startIndex, endIndex)");
                String strSubstring2 = line.substring(iN0 + 1);
                Intrinsics.g(strSubstring2, "this as java.lang.String).substring(startIndex)");
                addLenient$okhttp(strSubstring, strSubstring2);
            } else if (line.charAt(0) == ':') {
                String strSubstring3 = line.substring(1);
                Intrinsics.g(strSubstring3, "this as java.lang.String).substring(startIndex)");
                addLenient$okhttp("", strSubstring3);
            } else {
                addLenient$okhttp("", line);
            }
            return this;
        }

        public final Builder addLenient$okhttp(String name, String value) {
            Intrinsics.h(name, "name");
            Intrinsics.h(value, "value");
            this.namesAndValues.add(name);
            this.namesAndValues.add(StringsKt.n1(value).toString());
            return this;
        }

        public final Builder addUnsafeNonAscii(String name, String value) {
            Intrinsics.h(name, "name");
            Intrinsics.h(value, "value");
            Headers.INSTANCE.checkName(name);
            addLenient$okhttp(name, value);
            return this;
        }

        public final Headers build() {
            return new Headers((String[]) this.namesAndValues.toArray(new String[0]), null);
        }

        public final String get(String name) {
            Intrinsics.h(name, "name");
            int size = this.namesAndValues.size() - 2;
            int iC = ProgressionUtilKt.c(size, 0, -2);
            if (iC > size) {
                return null;
            }
            while (!StringsKt.H(name, this.namesAndValues.get(size), true)) {
                if (size == iC) {
                    return null;
                }
                size -= 2;
            }
            return this.namesAndValues.get(size + 1);
        }

        public final List<String> getNamesAndValues$okhttp() {
            return this.namesAndValues;
        }

        public final Builder removeAll(String name) {
            Intrinsics.h(name, "name");
            int i11 = 0;
            while (i11 < this.namesAndValues.size()) {
                if (StringsKt.H(name, this.namesAndValues.get(i11), true)) {
                    this.namesAndValues.remove(i11);
                    this.namesAndValues.remove(i11);
                    i11 -= 2;
                }
                i11 += 2;
            }
            return this;
        }

        public final Builder set(String name, String value) {
            Intrinsics.h(name, "name");
            Intrinsics.h(value, "value");
            Companion companion = Headers.INSTANCE;
            companion.checkName(name);
            companion.checkValue(value, name);
            removeAll(name);
            addLenient$okhttp(name, value);
            return this;
        }

        @IgnoreJRERequirement
        public final Builder set(String name, Instant value) {
            Intrinsics.h(name, "name");
            Intrinsics.h(value, "value");
            return set(name, new Date(value.toEpochMilli()));
        }

        public final Builder set(String name, Date value) {
            Intrinsics.h(name, "name");
            Intrinsics.h(value, "value");
            set(name, DatesKt.toHttpDateString(value));
            return this;
        }
    }

    @Metadata(d1 = {"\u00002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0010\u0011\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010$\n\u0002\b\u0002\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0010\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006H\u0002J\u0018\u0010\u0007\u001a\u00020\u00042\u0006\u0010\b\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u0006H\u0002J%\u0010\t\u001a\u0004\u0018\u00010\u00062\f\u0010\n\u001a\b\u0012\u0004\u0012\u00020\u00060\u000b2\u0006\u0010\u0005\u001a\u00020\u0006H\u0002¢\u0006\u0002\u0010\fJ#\u0010\r\u001a\u00020\u000e2\u0012\u0010\n\u001a\n\u0012\u0006\b\u0001\u0012\u00020\u00060\u000b\"\u00020\u0006H\u0007¢\u0006\u0004\b\u000f\u0010\u0010J#\u0010\u000f\u001a\u00020\u000e2\u0012\u0010\n\u001a\n\u0012\u0006\b\u0001\u0012\u00020\u00060\u000b\"\u00020\u0006H\u0007¢\u0006\u0004\b\u0011\u0010\u0010J!\u0010\u000f\u001a\u00020\u000e2\u0012\u0010\u0012\u001a\u000e\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u00060\u0013H\u0007¢\u0006\u0002\b\u0011J\u001d\u0010\u0014\u001a\u00020\u000e*\u000e\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u00060\u0013H\u0007¢\u0006\u0002\b\u000f¨\u0006\u0015"}, d2 = {"Lokhttp3/Headers$Companion;", "", "()V", "checkName", "", "name", "", "checkValue", AppMeasurementSdk.ConditionalUserProperty.VALUE, "get", "namesAndValues", "", "([Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;", "headersOf", "Lokhttp3/Headers;", "of", "([Ljava/lang/String;)Lokhttp3/Headers;", "-deprecated_of", "headers", "", "toHeaders", "okhttp"}, k = 1, mv = {1, 8, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
    @SourceDebugExtension
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final void checkName(String name) {
            if (name.length() <= 0) {
                throw new IllegalArgumentException("name is empty");
            }
            int length = name.length();
            for (int i11 = 0; i11 < length; i11++) {
                char cCharAt = name.charAt(i11);
                if ('!' > cCharAt || cCharAt >= 127) {
                    throw new IllegalArgumentException(Util.format("Unexpected char %#04x at %d in header name: %s", Integer.valueOf(cCharAt), Integer.valueOf(i11), name).toString());
                }
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final void checkValue(String value, String name) {
            int length = value.length();
            for (int i11 = 0; i11 < length; i11++) {
                char cCharAt = value.charAt(i11);
                if (cCharAt != '\t' && (' ' > cCharAt || cCharAt >= 127)) {
                    StringBuilder sb2 = new StringBuilder();
                    sb2.append(Util.format("Unexpected char %#04x at %d in %s value", Integer.valueOf(cCharAt), Integer.valueOf(i11), name));
                    sb2.append(Util.isSensitiveHeader(name) ? "" : ": " + value);
                    throw new IllegalArgumentException(sb2.toString().toString());
                }
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final String get(String[] namesAndValues, String name) {
            int length = namesAndValues.length - 2;
            int iC = ProgressionUtilKt.c(length, 0, -2);
            if (iC > length) {
                return null;
            }
            while (!StringsKt.H(name, namesAndValues[length], true)) {
                if (length == iC) {
                    return null;
                }
                length -= 2;
            }
            return namesAndValues[length + 1];
        }

        @Deprecated
        @JvmName
        /* JADX INFO: renamed from: -deprecated_of, reason: not valid java name */
        public final Headers m522deprecated_of(Map<String, String> headers) {
            Intrinsics.h(headers, "headers");
            return of(headers);
        }

        @Deprecated
        @JvmName
        /* JADX INFO: renamed from: -deprecated_of, reason: not valid java name */
        public final Headers m523deprecated_of(String... namesAndValues) {
            Intrinsics.h(namesAndValues, "namesAndValues");
            return of((String[]) Arrays.copyOf(namesAndValues, namesAndValues.length));
        }

        @JvmStatic
        @JvmName
        public final Headers of(Map<String, String> map) {
            Intrinsics.h(map, "<this>");
            String[] strArr = new String[map.size() * 2];
            int i11 = 0;
            for (Map.Entry<String, String> entry : map.entrySet()) {
                String key = entry.getKey();
                String value = entry.getValue();
                String string = StringsKt.n1(key).toString();
                String string2 = StringsKt.n1(value).toString();
                checkName(string);
                checkValue(string2, string);
                strArr[i11] = string;
                strArr[i11 + 1] = string2;
                i11 += 2;
            }
            return new Headers(strArr, null);
        }

        @JvmStatic
        @JvmName
        public final Headers of(String... namesAndValues) {
            Intrinsics.h(namesAndValues, "namesAndValues");
            if (namesAndValues.length % 2 != 0) {
                throw new IllegalArgumentException("Expected alternating header names and values");
            }
            String[] strArr = (String[]) namesAndValues.clone();
            int length = strArr.length;
            int i11 = 0;
            for (int i12 = 0; i12 < length; i12++) {
                String str = strArr[i12];
                if (str == null) {
                    throw new IllegalArgumentException("Headers cannot be null");
                }
                strArr[i12] = StringsKt.n1(str).toString();
            }
            int iC = ProgressionUtilKt.c(0, strArr.length - 1, 2);
            if (iC >= 0) {
                while (true) {
                    String str2 = strArr[i11];
                    String str3 = strArr[i11 + 1];
                    checkName(str2);
                    checkValue(str3, str2);
                    if (i11 == iC) {
                        break;
                    }
                    i11 += 2;
                }
            }
            return new Headers(strArr, null);
        }
    }

    private Headers(String[] strArr) {
        this.namesAndValues = strArr;
    }

    public /* synthetic */ Headers(String[] strArr, DefaultConstructorMarker defaultConstructorMarker) {
        this(strArr);
    }

    @JvmStatic
    @JvmName
    public static final Headers of(Map<String, String> map) {
        return INSTANCE.of(map);
    }

    @JvmStatic
    @JvmName
    public static final Headers of(String... strArr) {
        return INSTANCE.of(strArr);
    }

    @Deprecated
    @JvmName
    /* JADX INFO: renamed from: -deprecated_size, reason: not valid java name */
    public final int m521deprecated_size() {
        return size();
    }

    public final long byteCount() {
        String[] strArr = this.namesAndValues;
        long length = strArr.length * 2;
        int length2 = strArr.length;
        for (int i11 = 0; i11 < length2; i11++) {
            length += (long) this.namesAndValues[i11].length();
        }
        return length;
    }

    public boolean equals(Object other) {
        return (other instanceof Headers) && Arrays.equals(this.namesAndValues, ((Headers) other).namesAndValues);
    }

    public final String get(String name) {
        Intrinsics.h(name, "name");
        return INSTANCE.get(this.namesAndValues, name);
    }

    public final Date getDate(String name) {
        Intrinsics.h(name, "name");
        String str = get(name);
        if (str != null) {
            return DatesKt.toHttpDateOrNull(str);
        }
        return null;
    }

    @IgnoreJRERequirement
    public final Instant getInstant(String name) {
        Intrinsics.h(name, "name");
        Date date = getDate(name);
        if (date != null) {
            return date.toInstant();
        }
        return null;
    }

    public int hashCode() {
        return Arrays.hashCode(this.namesAndValues);
    }

    @Override // java.lang.Iterable
    public Iterator<Pair<? extends String, ? extends String>> iterator() {
        int size = size();
        Pair[] pairArr = new Pair[size];
        for (int i11 = 0; i11 < size; i11++) {
            pairArr[i11] = TuplesKt.a(name(i11), value(i11));
        }
        return ArrayIteratorKt.a(pairArr);
    }

    public final String name(int index) {
        return this.namesAndValues[index * 2];
    }

    public final Set<String> names() {
        TreeSet treeSet = new TreeSet(StringsKt.J(StringCompanionObject.f67289a));
        int size = size();
        for (int i11 = 0; i11 < size; i11++) {
            treeSet.add(name(i11));
        }
        Set<String> setUnmodifiableSet = Collections.unmodifiableSet(treeSet);
        Intrinsics.g(setUnmodifiableSet, "unmodifiableSet(result)");
        return setUnmodifiableSet;
    }

    public final Builder newBuilder() {
        Builder builder = new Builder();
        CollectionsKt.C(builder.getNamesAndValues$okhttp(), this.namesAndValues);
        return builder;
    }

    @JvmName
    public final int size() {
        return this.namesAndValues.length / 2;
    }

    public final Map<String, List<String>> toMultimap() {
        TreeMap treeMap = new TreeMap(StringsKt.J(StringCompanionObject.f67289a));
        int size = size();
        for (int i11 = 0; i11 < size; i11++) {
            String strName = name(i11);
            Locale US = Locale.US;
            Intrinsics.g(US, "US");
            String lowerCase = strName.toLowerCase(US);
            Intrinsics.g(lowerCase, "this as java.lang.String).toLowerCase(locale)");
            List arrayList = (List) treeMap.get(lowerCase);
            if (arrayList == null) {
                arrayList = new ArrayList(2);
                treeMap.put(lowerCase, arrayList);
            }
            arrayList.add(value(i11));
        }
        return treeMap;
    }

    public String toString() {
        StringBuilder sb2 = new StringBuilder();
        int size = size();
        for (int i11 = 0; i11 < size; i11++) {
            String strName = name(i11);
            String strValue = value(i11);
            sb2.append(strName);
            sb2.append(": ");
            if (Util.isSensitiveHeader(strName)) {
                strValue = "██";
            }
            sb2.append(strValue);
            sb2.append("\n");
        }
        String string = sb2.toString();
        Intrinsics.g(string, "StringBuilder().apply(builderAction).toString()");
        return string;
    }

    public final String value(int index) {
        return this.namesAndValues[(index * 2) + 1];
    }

    public final List<String> values(String name) {
        Intrinsics.h(name, "name");
        int size = size();
        ArrayList arrayList = null;
        for (int i11 = 0; i11 < size; i11++) {
            if (StringsKt.H(name, name(i11), true)) {
                if (arrayList == null) {
                    arrayList = new ArrayList(2);
                }
                arrayList.add(value(i11));
            }
        }
        if (arrayList == null) {
            return CollectionsKt.l();
        }
        List<String> listUnmodifiableList = Collections.unmodifiableList(arrayList);
        Intrinsics.g(listUnmodifiableList, "{\n      Collections.unmodifiableList(result)\n    }");
        return listUnmodifiableList;
    }
}
