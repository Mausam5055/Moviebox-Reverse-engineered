package kotlinx.serialization.json.internal;

import kotlin.KotlinNothingValueException;
import kotlin.jvm.internal.Intrinsics;
import kotlin.ranges.RangesKt;

/* JADX INFO: loaded from: classes7.dex */
public abstract class w {
    public static final JsonDecodingException a(Number value, String key, String output) {
        Intrinsics.h(value, "value");
        Intrinsics.h(key, "key");
        Intrinsics.h(output, "output");
        return e(-1, k(value, key, output));
    }

    public static final JsonEncodingException b(Number value, String output) {
        Intrinsics.h(value, "value");
        Intrinsics.h(output, "output");
        return new JsonEncodingException("Unexpected special floating-point value " + value + ". By default, non-finite floating point values are prohibited because they do not conform JSON specification. It is possible to deserialize them using 'JsonBuilder.allowSpecialFloatingPointValues = true'\nCurrent output: " + ((Object) i(output, 0, 1, null)));
    }

    public static final JsonEncodingException c(Number value, String key, String output) {
        Intrinsics.h(value, "value");
        Intrinsics.h(key, "key");
        Intrinsics.h(output, "output");
        return new JsonEncodingException(k(value, key, output));
    }

    public static final JsonEncodingException d(kotlinx.serialization.descriptors.f keyDescriptor) {
        Intrinsics.h(keyDescriptor, "keyDescriptor");
        return new JsonEncodingException("Value of type '" + keyDescriptor.i() + "' can't be used in JSON as a key in the map. It should have either primitive or enum kind, but its kind is '" + keyDescriptor.d() + "'.\nUse 'allowStructuredMapKeys = true' in 'Json {}' builder to convert such maps to [key1, value1, key2, value2,...] arrays.");
    }

    public static final JsonDecodingException e(int i11, String message) {
        Intrinsics.h(message, "message");
        if (i11 >= 0) {
            message = "Unexpected JSON token at offset " + i11 + ": " + message;
        }
        return new JsonDecodingException(message);
    }

    public static final JsonDecodingException f(int i11, String message, CharSequence input) {
        Intrinsics.h(message, "message");
        Intrinsics.h(input, "input");
        return e(i11, message + "\nJSON input: " + ((Object) h(input, i11)));
    }

    public static final JsonDecodingException g(String key, String input) {
        Intrinsics.h(key, "key");
        Intrinsics.h(input, "input");
        return e(-1, "Encountered unknown key '" + key + "'.\nUse 'ignoreUnknownKeys = true' in 'Json {}' builder to ignore unknown keys.\nCurrent input: " + ((Object) i(input, 0, 1, null)));
    }

    private static final CharSequence h(CharSequence charSequence, int i11) {
        if (charSequence.length() < 200) {
            return charSequence;
        }
        if (i11 == -1) {
            int length = charSequence.length() - 60;
            if (length <= 0) {
                return charSequence;
            }
            return "....." + charSequence.subSequence(length, charSequence.length()).toString();
        }
        int i12 = i11 - 30;
        int i13 = i11 + 30;
        return (i12 <= 0 ? "" : ".....") + charSequence.subSequence(RangesKt.f(i12, 0), RangesKt.i(i13, charSequence.length())).toString() + (i13 >= charSequence.length() ? "" : ".....");
    }

    static /* synthetic */ CharSequence i(CharSequence charSequence, int i11, int i12, Object obj) {
        if ((i12 & 1) != 0) {
            i11 = -1;
        }
        return h(charSequence, i11);
    }

    public static final Void j(a aVar, Number result) {
        Intrinsics.h(aVar, "<this>");
        Intrinsics.h(result, "result");
        a.y(aVar, "Unexpected special floating-point value " + result + ". By default, non-finite floating point values are prohibited because they do not conform JSON specification", 0, "It is possible to deserialize them using 'JsonBuilder.allowSpecialFloatingPointValues = true'", 2, null);
        throw new KotlinNothingValueException();
    }

    private static final String k(Number number, String str, String str2) {
        return "Unexpected special floating-point value " + number + " with key " + str + ". By default, non-finite floating point values are prohibited because they do not conform JSON specification. It is possible to deserialize them using 'JsonBuilder.allowSpecialFloatingPointValues = true'\nCurrent output: " + ((Object) i(str2, 0, 1, null));
    }
}
