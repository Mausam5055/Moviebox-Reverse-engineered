package com.squareup.okhttp;

import com.squareup.okhttp.internal.http.f;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Date;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.TreeSet;

/* JADX INFO: loaded from: classes5.dex */
public final class Headers {
    private final String[] namesAndValues;

    public static final class Builder {
        private final List<String> namesAndValues = new ArrayList(20);

        private void checkNameAndValue(String str, String str2) {
            if (str == null) {
                throw new IllegalArgumentException("name == null");
            }
            if (str.isEmpty()) {
                throw new IllegalArgumentException("name is empty");
            }
            int length = str.length();
            for (int i11 = 0; i11 < length; i11++) {
                char cCharAt = str.charAt(i11);
                if (cCharAt <= 31 || cCharAt >= 127) {
                    throw new IllegalArgumentException(String.format("Unexpected char %#04x at %d in header name: %s", Integer.valueOf(cCharAt), Integer.valueOf(i11), str));
                }
            }
            if (str2 == null) {
                throw new IllegalArgumentException("value == null");
            }
            int length2 = str2.length();
            for (int i12 = 0; i12 < length2; i12++) {
                char cCharAt2 = str2.charAt(i12);
                if (cCharAt2 <= 31 || cCharAt2 >= 127) {
                    throw new IllegalArgumentException(String.format("Unexpected char %#04x at %d in header value: %s", Integer.valueOf(cCharAt2), Integer.valueOf(i12), str2));
                }
            }
        }

        public Builder add(String str) {
            int iIndexOf = str.indexOf(":");
            if (iIndexOf != -1) {
                return add(str.substring(0, iIndexOf).trim(), str.substring(iIndexOf + 1));
            }
            throw new IllegalArgumentException("Unexpected header: " + str);
        }

        public Builder add(String str, String str2) {
            checkNameAndValue(str, str2);
            return addLenient(str, str2);
        }

        Builder addLenient(String str) {
            int iIndexOf = str.indexOf(":", 1);
            if (iIndexOf != -1) {
                return addLenient(str.substring(0, iIndexOf), str.substring(iIndexOf + 1));
            }
            return str.startsWith(":") ? addLenient("", str.substring(1)) : addLenient("", str);
        }

        Builder addLenient(String str, String str2) {
            this.namesAndValues.add(str);
            this.namesAndValues.add(str2.trim());
            return this;
        }

        public Headers build() {
            return new Headers(this);
        }

        public String get(String str) {
            for (int size = this.namesAndValues.size() - 2; size >= 0; size -= 2) {
                if (str.equalsIgnoreCase(this.namesAndValues.get(size))) {
                    return this.namesAndValues.get(size + 1);
                }
            }
            return null;
        }

        public Builder removeAll(String str) {
            int i11 = 0;
            while (i11 < this.namesAndValues.size()) {
                if (str.equalsIgnoreCase(this.namesAndValues.get(i11))) {
                    this.namesAndValues.remove(i11);
                    this.namesAndValues.remove(i11);
                    i11 -= 2;
                }
                i11 += 2;
            }
            return this;
        }

        public Builder set(String str, String str2) {
            checkNameAndValue(str, str2);
            removeAll(str);
            addLenient(str, str2);
            return this;
        }
    }

    private Headers(Builder builder) {
        this.namesAndValues = (String[]) builder.namesAndValues.toArray(new String[builder.namesAndValues.size()]);
    }

    private Headers(String[] strArr) {
        this.namesAndValues = strArr;
    }

    private static String get(String[] strArr, String str) {
        for (int length = strArr.length - 2; length >= 0; length -= 2) {
            if (str.equalsIgnoreCase(strArr[length])) {
                return strArr[length + 1];
            }
        }
        return null;
    }

    public static Headers of(Map<String, String> map) {
        if (map == null) {
            throw new IllegalArgumentException("Expected map with header names and values");
        }
        String[] strArr = new String[map.size() * 2];
        int i11 = 0;
        for (Map.Entry<String, String> entry : map.entrySet()) {
            if (entry.getKey() == null || entry.getValue() == null) {
                throw new IllegalArgumentException("Headers cannot be null");
            }
            String strTrim = entry.getKey().trim();
            String strTrim2 = entry.getValue().trim();
            if (strTrim.length() == 0 || strTrim.indexOf(0) != -1 || strTrim2.indexOf(0) != -1) {
                throw new IllegalArgumentException("Unexpected header: " + strTrim + ": " + strTrim2);
            }
            strArr[i11] = strTrim;
            strArr[i11 + 1] = strTrim2;
            i11 += 2;
        }
        return new Headers(strArr);
    }

    public static Headers of(String... strArr) {
        if (strArr == null || strArr.length % 2 != 0) {
            throw new IllegalArgumentException("Expected alternating header names and values");
        }
        String[] strArr2 = (String[]) strArr.clone();
        for (int i11 = 0; i11 < strArr2.length; i11++) {
            String str = strArr2[i11];
            if (str == null) {
                throw new IllegalArgumentException("Headers cannot be null");
            }
            strArr2[i11] = str.trim();
        }
        for (int i12 = 0; i12 < strArr2.length; i12 += 2) {
            String str2 = strArr2[i12];
            String str3 = strArr2[i12 + 1];
            if (str2.length() == 0 || str2.indexOf(0) != -1 || str3.indexOf(0) != -1) {
                throw new IllegalArgumentException("Unexpected header: " + str2 + ": " + str3);
            }
        }
        return new Headers(strArr2);
    }

    public String get(String str) {
        return get(this.namesAndValues, str);
    }

    public Date getDate(String str) {
        String str2 = get(str);
        if (str2 != null) {
            return f.b(str2);
        }
        return null;
    }

    public String name(int i11) {
        int i12 = i11 * 2;
        if (i12 < 0) {
            return null;
        }
        String[] strArr = this.namesAndValues;
        if (i12 >= strArr.length) {
            return null;
        }
        return strArr[i12];
    }

    public Set<String> names() {
        TreeSet treeSet = new TreeSet(String.CASE_INSENSITIVE_ORDER);
        int size = size();
        for (int i11 = 0; i11 < size; i11++) {
            treeSet.add(name(i11));
        }
        return Collections.unmodifiableSet(treeSet);
    }

    public Builder newBuilder() {
        Builder builder = new Builder();
        Collections.addAll(builder.namesAndValues, this.namesAndValues);
        return builder;
    }

    public int size() {
        return this.namesAndValues.length / 2;
    }

    public Map<String, List<String>> toMultimap() {
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        int size = size();
        for (int i11 = 0; i11 < size; i11++) {
            String strName = name(i11);
            List arrayList = (List) linkedHashMap.get(strName);
            if (arrayList == null) {
                arrayList = new ArrayList(2);
                linkedHashMap.put(strName, arrayList);
            }
            arrayList.add(value(i11));
        }
        return linkedHashMap;
    }

    public String toString() {
        StringBuilder sb2 = new StringBuilder();
        int size = size();
        for (int i11 = 0; i11 < size; i11++) {
            sb2.append(name(i11));
            sb2.append(": ");
            sb2.append(value(i11));
            sb2.append("\n");
        }
        return sb2.toString();
    }

    public String value(int i11) {
        int i12 = (i11 * 2) + 1;
        if (i12 < 0) {
            return null;
        }
        String[] strArr = this.namesAndValues;
        if (i12 >= strArr.length) {
            return null;
        }
        return strArr[i12];
    }

    public List<String> values(String str) {
        int size = size();
        ArrayList arrayList = null;
        for (int i11 = 0; i11 < size; i11++) {
            if (str.equalsIgnoreCase(name(i11))) {
                if (arrayList == null) {
                    arrayList = new ArrayList(2);
                }
                arrayList.add(value(i11));
            }
        }
        return arrayList != null ? Collections.unmodifiableList(arrayList) : Collections.emptyList();
    }
}
