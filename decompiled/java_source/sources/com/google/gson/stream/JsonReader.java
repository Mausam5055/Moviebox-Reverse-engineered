package com.google.gson.stream;

import com.google.gson.internal.JsonReaderInternalAccess;
import com.google.gson.internal.bind.JsonTreeReader;
import java.io.Closeable;
import java.io.EOFException;
import java.io.IOException;
import java.io.Reader;
import java.util.Arrays;
import java.util.Objects;

/* JADX INFO: loaded from: classes.dex */
public class JsonReader implements Closeable {
    static final int BUFFER_SIZE = 1024;
    private static final long MIN_INCOMPLETE_INTEGER = -922337203685477580L;
    private static final int NUMBER_CHAR_DECIMAL = 3;
    private static final int NUMBER_CHAR_DIGIT = 2;
    private static final int NUMBER_CHAR_EXP_DIGIT = 7;
    private static final int NUMBER_CHAR_EXP_E = 5;
    private static final int NUMBER_CHAR_EXP_SIGN = 6;
    private static final int NUMBER_CHAR_FRACTION_DIGIT = 4;
    private static final int NUMBER_CHAR_NONE = 0;
    private static final int NUMBER_CHAR_SIGN = 1;
    private static final int PEEKED_BEGIN_ARRAY = 3;
    private static final int PEEKED_BEGIN_OBJECT = 1;
    private static final int PEEKED_BUFFERED = 11;
    private static final int PEEKED_DOUBLE_QUOTED = 9;
    private static final int PEEKED_DOUBLE_QUOTED_NAME = 13;
    private static final int PEEKED_END_ARRAY = 4;
    private static final int PEEKED_END_OBJECT = 2;
    private static final int PEEKED_EOF = 17;
    private static final int PEEKED_FALSE = 6;
    private static final int PEEKED_LONG = 15;
    private static final int PEEKED_NONE = 0;
    private static final int PEEKED_NULL = 7;
    private static final int PEEKED_NUMBER = 16;
    private static final int PEEKED_SINGLE_QUOTED = 8;
    private static final int PEEKED_SINGLE_QUOTED_NAME = 12;
    private static final int PEEKED_TRUE = 5;
    private static final int PEEKED_UNQUOTED = 10;
    private static final int PEEKED_UNQUOTED_NAME = 14;

    /* JADX INFO: renamed from: in, reason: collision with root package name */
    private final Reader f32749in;
    private int[] pathIndices;
    private String[] pathNames;
    private long peekedLong;
    private int peekedNumberLength;
    private String peekedString;
    private int[] stack;
    private boolean lenient = false;
    private final char[] buffer = new char[1024];
    private int pos = 0;
    private int limit = 0;
    private int lineNumber = 0;
    private int lineStart = 0;
    int peeked = 0;
    private int stackSize = 1;

    static {
        JsonReaderInternalAccess.INSTANCE = new JsonReaderInternalAccess() { // from class: com.google.gson.stream.JsonReader.1
            @Override // com.google.gson.internal.JsonReaderInternalAccess
            public void promoteNameToValue(JsonReader jsonReader) throws IOException {
                if (jsonReader instanceof JsonTreeReader) {
                    ((JsonTreeReader) jsonReader).promoteNameToValue();
                    return;
                }
                int iDoPeek = jsonReader.peeked;
                if (iDoPeek == 0) {
                    iDoPeek = jsonReader.doPeek();
                }
                if (iDoPeek == 13) {
                    jsonReader.peeked = 9;
                    return;
                }
                if (iDoPeek == 12) {
                    jsonReader.peeked = 8;
                    return;
                }
                if (iDoPeek == 14) {
                    jsonReader.peeked = 10;
                    return;
                }
                throw new IllegalStateException("Expected a name but was " + jsonReader.peek() + jsonReader.locationString());
            }
        };
    }

    public JsonReader(Reader reader) {
        int[] iArr = new int[32];
        this.stack = iArr;
        iArr[0] = 6;
        this.pathNames = new String[32];
        this.pathIndices = new int[32];
        Objects.requireNonNull(reader, "in == null");
        this.f32749in = reader;
    }

    private void checkLenient() throws IOException {
        if (!this.lenient) {
            throw syntaxError("Use JsonReader.setLenient(true) to accept malformed JSON");
        }
    }

    private void consumeNonExecutePrefix() throws IOException {
        nextNonWhitespace(true);
        int i11 = this.pos;
        this.pos = i11 - 1;
        if (i11 + 4 <= this.limit || fillBuffer(5)) {
            int i12 = this.pos;
            char[] cArr = this.buffer;
            if (cArr[i12] == ')' && cArr[i12 + 1] == ']' && cArr[i12 + 2] == '}' && cArr[i12 + 3] == '\'' && cArr[i12 + 4] == '\n') {
                this.pos = i12 + 5;
            }
        }
    }

    private boolean fillBuffer(int i11) throws IOException {
        int i12;
        int i13;
        char[] cArr = this.buffer;
        int i14 = this.lineStart;
        int i15 = this.pos;
        this.lineStart = i14 - i15;
        int i16 = this.limit;
        if (i16 != i15) {
            int i17 = i16 - i15;
            this.limit = i17;
            System.arraycopy(cArr, i15, cArr, 0, i17);
        } else {
            this.limit = 0;
        }
        this.pos = 0;
        do {
            Reader reader = this.f32749in;
            int i18 = this.limit;
            int i19 = reader.read(cArr, i18, cArr.length - i18);
            if (i19 == -1) {
                return false;
            }
            i12 = this.limit + i19;
            this.limit = i12;
            if (this.lineNumber == 0 && (i13 = this.lineStart) == 0 && i12 > 0 && cArr[0] == 65279) {
                this.pos++;
                this.lineStart = i13 + 1;
                i11++;
            }
        } while (i12 < i11);
        return true;
    }

    private String getPath(boolean z10) {
        StringBuilder sb2 = new StringBuilder();
        sb2.append('$');
        int i11 = 0;
        while (true) {
            int i12 = this.stackSize;
            if (i11 >= i12) {
                return sb2.toString();
            }
            int i13 = this.stack[i11];
            if (i13 == 1 || i13 == 2) {
                int i14 = this.pathIndices[i11];
                if (z10 && i14 > 0 && i11 == i12 - 1) {
                    i14--;
                }
                sb2.append('[');
                sb2.append(i14);
                sb2.append(']');
            } else if (i13 == 3 || i13 == 4 || i13 == 5) {
                sb2.append('.');
                String str = this.pathNames[i11];
                if (str != null) {
                    sb2.append(str);
                }
            }
            i11++;
        }
    }

    private boolean isLiteral(char c11) throws IOException {
        if (c11 == '\t' || c11 == '\n' || c11 == '\f' || c11 == '\r' || c11 == ' ') {
            return false;
        }
        if (c11 != '#') {
            if (c11 == ',') {
                return false;
            }
            if (c11 != '/' && c11 != '=') {
                if (c11 == '{' || c11 == '}' || c11 == ':') {
                    return false;
                }
                if (c11 != ';') {
                    switch (c11) {
                        case '[':
                        case ']':
                            return false;
                        case '\\':
                            break;
                        default:
                            return true;
                    }
                }
            }
        }
        checkLenient();
        return false;
    }

    private int nextNonWhitespace(boolean z10) throws IOException {
        char[] cArr = this.buffer;
        int i11 = this.pos;
        int i12 = this.limit;
        while (true) {
            if (i11 == i12) {
                this.pos = i11;
                if (!fillBuffer(1)) {
                    if (!z10) {
                        return -1;
                    }
                    throw new EOFException("End of input" + locationString());
                }
                i11 = this.pos;
                i12 = this.limit;
            }
            int i13 = i11 + 1;
            char c11 = cArr[i11];
            if (c11 == '\n') {
                this.lineNumber++;
                this.lineStart = i13;
            } else if (c11 != ' ' && c11 != '\r' && c11 != '\t') {
                if (c11 == '/') {
                    this.pos = i13;
                    if (i13 == i12) {
                        this.pos = i11;
                        boolean zFillBuffer = fillBuffer(2);
                        this.pos++;
                        if (!zFillBuffer) {
                            return c11;
                        }
                    }
                    checkLenient();
                    int i14 = this.pos;
                    char c12 = cArr[i14];
                    if (c12 == '*') {
                        this.pos = i14 + 1;
                        if (!skipTo("*/")) {
                            throw syntaxError("Unterminated comment");
                        }
                        i11 = this.pos + 2;
                        i12 = this.limit;
                    } else {
                        if (c12 != '/') {
                            return c11;
                        }
                        this.pos = i14 + 1;
                        skipToEndOfLine();
                        i11 = this.pos;
                        i12 = this.limit;
                    }
                } else {
                    if (c11 != '#') {
                        this.pos = i13;
                        return c11;
                    }
                    this.pos = i13;
                    checkLenient();
                    skipToEndOfLine();
                    i11 = this.pos;
                    i12 = this.limit;
                }
            }
            i11 = i13;
        }
    }

    private String nextQuotedValue(char c11) throws IOException {
        int i11;
        char[] cArr = this.buffer;
        StringBuilder sb2 = null;
        do {
            int i12 = this.pos;
            int i13 = this.limit;
            while (true) {
                int i14 = i13;
                i11 = i12;
                while (true) {
                    if (i12 < i14) {
                        int i15 = i12 + 1;
                        char c12 = cArr[i12];
                        if (c12 == c11) {
                            this.pos = i15;
                            int i16 = (i15 - i11) - 1;
                            if (sb2 == null) {
                                return new String(cArr, i11, i16);
                            }
                            sb2.append(cArr, i11, i16);
                            return sb2.toString();
                        }
                        if (c12 == '\\') {
                            this.pos = i15;
                            int i17 = i15 - i11;
                            int i18 = i17 - 1;
                            if (sb2 == null) {
                                sb2 = new StringBuilder(Math.max(i17 * 2, 16));
                            }
                            sb2.append(cArr, i11, i18);
                            sb2.append(readEscapeCharacter());
                            i12 = this.pos;
                            i13 = this.limit;
                        } else {
                            if (c12 == '\n') {
                                this.lineNumber++;
                                this.lineStart = i15;
                            }
                            i12 = i15;
                        }
                    }
                }
            }
            if (sb2 == null) {
                sb2 = new StringBuilder(Math.max((i12 - i11) * 2, 16));
            }
            sb2.append(cArr, i11, i12 - i11);
            this.pos = i12;
        } while (fillBuffer(1));
        throw syntaxError("Unterminated string");
    }

    /* JADX WARN: Failed to find 'out' block for switch in B:32:0x0044. Please report as an issue. */
    private String nextUnquotedValue() throws IOException {
        String string;
        StringBuilder sb2 = null;
        int i11 = 0;
        while (true) {
            int i12 = 0;
            while (true) {
                int i13 = this.pos;
                if (i13 + i12 < this.limit) {
                    char c11 = this.buffer[i13 + i12];
                    if (c11 != '\t' && c11 != '\n' && c11 != '\f' && c11 != '\r' && c11 != ' ') {
                        if (c11 != '#') {
                            if (c11 != ',') {
                                if (c11 != '/' && c11 != '=') {
                                    if (c11 != '{' && c11 != '}' && c11 != ':') {
                                        if (c11 != ';') {
                                            switch (c11) {
                                                case '[':
                                                case ']':
                                                    break;
                                                case '\\':
                                                    break;
                                                default:
                                                    i12++;
                                                    break;
                                            }
                                        }
                                    }
                                }
                            }
                        }
                        checkLenient();
                    }
                    i11 = i12;
                } else if (i12 >= this.buffer.length) {
                    if (sb2 == null) {
                        sb2 = new StringBuilder(Math.max(i12, 16));
                    }
                    sb2.append(this.buffer, this.pos, i12);
                    this.pos += i12;
                    if (!fillBuffer(1)) {
                    }
                } else if (!fillBuffer(i12 + 1)) {
                    i11 = i12;
                }
                if (sb2 == null) {
                    string = new String(this.buffer, this.pos, i11);
                } else {
                    sb2.append(this.buffer, this.pos, i11);
                    string = sb2.toString();
                }
                this.pos += i11;
                return string;
            }
        }
    }

    private int peekKeyword() throws IOException {
        String str;
        String str2;
        int i11;
        char c11 = this.buffer[this.pos];
        if (c11 == 't' || c11 == 'T') {
            str = "true";
            str2 = "TRUE";
            i11 = 5;
        } else if (c11 == 'f' || c11 == 'F') {
            str = "false";
            str2 = "FALSE";
            i11 = 6;
        } else {
            if (c11 != 'n' && c11 != 'N') {
                return 0;
            }
            str = "null";
            str2 = "NULL";
            i11 = 7;
        }
        int length = str.length();
        for (int i12 = 1; i12 < length; i12++) {
            if (this.pos + i12 >= this.limit && !fillBuffer(i12 + 1)) {
                return 0;
            }
            char c12 = this.buffer[this.pos + i12];
            if (c12 != str.charAt(i12) && c12 != str2.charAt(i12)) {
                return 0;
            }
        }
        if ((this.pos + length < this.limit || fillBuffer(length + 1)) && isLiteral(this.buffer[this.pos + length])) {
            return 0;
        }
        this.pos += length;
        this.peeked = i11;
        return i11;
    }

    /* JADX WARN: Code duplicated, block: B:110:0x00f7 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:14:0x0030  */
    /* JADX WARN: Code duplicated, block: B:90:0x00e0  */
    /* JADX WARN: Code duplicated, block: B:92:0x00e5  */
    /* JADX WARN: Code duplicated, block: B:97:0x00ec  */
    private int peekNumber() throws IOException {
        char c11;
        char c12;
        char[] cArr = this.buffer;
        int i11 = this.pos;
        int i12 = this.limit;
        int i13 = 0;
        int i14 = 0;
        char c13 = 0;
        boolean z10 = false;
        boolean z11 = true;
        long j11 = 0;
        while (true) {
            if (i11 + i14 != i12) {
                c11 = cArr[i11 + i14];
                if (c11 != '+') {
                    if (c11 != 'E' || c11 == 'e') {
                        i13 = 0;
                        if (c13 == 2 && c13 != 4) {
                            return 0;
                        }
                        c13 = 5;
                    } else if (c11 != '-') {
                        c12 = 3;
                        if (c11 == '.') {
                            i13 = 0;
                            if (c13 != 2) {
                                return 0;
                            }
                        } else {
                            if (c11 < '0' || c11 > '9') {
                                if (!isLiteral(c11)) {
                                    break;
                                }
                                return 0;
                            }
                            if (c13 == 1 || c13 == 0) {
                                j11 = -(c11 - '0');
                                c13 = 2;
                            } else if (c13 == 2) {
                                if (j11 == 0) {
                                    return 0;
                                }
                                long j12 = (10 * j11) - ((long) (c11 - '0'));
                                z11 &= j11 > -922337203685477580L || (j11 == -922337203685477580L && j12 < j11);
                                j11 = j12;
                            } else if (c13 == 3) {
                                i13 = 0;
                                c13 = 4;
                            } else if (c13 == 5 || c13 == 6) {
                                i13 = 0;
                                c13 = 7;
                            }
                            i13 = 0;
                        }
                    } else {
                        c12 = 6;
                        i13 = 0;
                        if (c13 == 0) {
                            c13 = 1;
                            z10 = true;
                        } else if (c13 != 5) {
                            return 0;
                        }
                    }
                    i14++;
                } else {
                    c12 = 6;
                    i13 = 0;
                    if (c13 != 5) {
                        return 0;
                    }
                }
                c13 = c12;
                i14++;
            } else {
                if (i14 == cArr.length) {
                    return i13;
                }
                if (!fillBuffer(i14 + 1)) {
                    break;
                }
                i11 = this.pos;
                i12 = this.limit;
                c11 = cArr[i11 + i14];
                if (c11 != '+') {
                    if (c11 != 'E') {
                        i13 = 0;
                        if (c13 == 2) {
                        }
                        c13 = 5;
                    } else {
                        i13 = 0;
                        if (c13 == 2) {
                        }
                        c13 = 5;
                    }
                    i14++;
                } else {
                    c12 = 6;
                    i13 = 0;
                    if (c13 != 5) {
                        return 0;
                    }
                }
                c13 = c12;
                i14++;
            }
        }
        if (c13 == 2 && z11 && ((j11 != Long.MIN_VALUE || z10) && (j11 != 0 || !z10))) {
            if (!z10) {
                j11 = -j11;
            }
            this.peekedLong = j11;
            this.pos += i14;
            this.peeked = 15;
            return 15;
        }
        if (c13 != 2 && c13 != 4 && c13 != 7) {
            return 0;
        }
        this.peekedNumberLength = i14;
        this.peeked = 16;
        return 16;
    }

    private void push(int i11) {
        int i12 = this.stackSize;
        int[] iArr = this.stack;
        if (i12 == iArr.length) {
            int i13 = i12 * 2;
            this.stack = Arrays.copyOf(iArr, i13);
            this.pathIndices = Arrays.copyOf(this.pathIndices, i13);
            this.pathNames = (String[]) Arrays.copyOf(this.pathNames, i13);
        }
        int[] iArr2 = this.stack;
        int i14 = this.stackSize;
        this.stackSize = i14 + 1;
        iArr2[i14] = i11;
    }

    private char readEscapeCharacter() throws IOException {
        int i11;
        if (this.pos == this.limit && !fillBuffer(1)) {
            throw syntaxError("Unterminated escape sequence");
        }
        char[] cArr = this.buffer;
        int i12 = this.pos;
        int i13 = i12 + 1;
        this.pos = i13;
        char c11 = cArr[i12];
        if (c11 == '\n') {
            this.lineNumber++;
            this.lineStart = i13;
        } else if (c11 != '\"' && c11 != '\'' && c11 != '/' && c11 != '\\') {
            if (c11 == 'b') {
                return '\b';
            }
            if (c11 == 'f') {
                return '\f';
            }
            if (c11 == 'n') {
                return '\n';
            }
            if (c11 == 'r') {
                return '\r';
            }
            if (c11 == 't') {
                return '\t';
            }
            if (c11 != 'u') {
                throw syntaxError("Invalid escape sequence");
            }
            if (i12 + 5 > this.limit && !fillBuffer(4)) {
                throw syntaxError("Unterminated escape sequence");
            }
            int i14 = this.pos;
            int i15 = i14 + 4;
            char c12 = 0;
            while (i14 < i15) {
                char c13 = this.buffer[i14];
                char c14 = (char) (c12 << 4);
                if (c13 >= '0' && c13 <= '9') {
                    i11 = c13 - '0';
                } else if (c13 >= 'a' && c13 <= 'f') {
                    i11 = c13 - 'W';
                } else {
                    if (c13 < 'A' || c13 > 'F') {
                        throw new NumberFormatException("\\u" + new String(this.buffer, this.pos, 4));
                    }
                    i11 = c13 - '7';
                }
                c12 = (char) (c14 + i11);
                i14++;
            }
            this.pos += 4;
            return c12;
        }
        return c11;
    }

    private void skipQuotedValue(char c11) throws IOException {
        char[] cArr = this.buffer;
        do {
            int i11 = this.pos;
            int i12 = this.limit;
            while (i11 < i12) {
                int i13 = i11 + 1;
                char c12 = cArr[i11];
                if (c12 == c11) {
                    this.pos = i13;
                    return;
                }
                if (c12 == '\\') {
                    this.pos = i13;
                    readEscapeCharacter();
                    i11 = this.pos;
                    i12 = this.limit;
                } else {
                    if (c12 == '\n') {
                        this.lineNumber++;
                        this.lineStart = i13;
                    }
                    i11 = i13;
                }
            }
            this.pos = i11;
        } while (fillBuffer(1));
        throw syntaxError("Unterminated string");
    }

    private boolean skipTo(String str) throws IOException {
        int length = str.length();
        while (true) {
            if (this.pos + length > this.limit && !fillBuffer(length)) {
                return false;
            }
            char[] cArr = this.buffer;
            int i11 = this.pos;
            if (cArr[i11] != '\n') {
                for (int i12 = 0; i12 < length; i12++) {
                    if (this.buffer[this.pos + i12] == str.charAt(i12)) {
                    }
                }
                return true;
            }
            this.lineNumber++;
            this.lineStart = i11 + 1;
            this.pos++;
        }
    }

    private void skipToEndOfLine() throws IOException {
        char c11;
        do {
            if (this.pos >= this.limit && !fillBuffer(1)) {
                return;
            }
            char[] cArr = this.buffer;
            int i11 = this.pos;
            int i12 = i11 + 1;
            this.pos = i12;
            c11 = cArr[i11];
            if (c11 == '\n') {
                this.lineNumber++;
                this.lineStart = i12;
                return;
            }
        } while (c11 != '\r');
    }

    private void skipUnquotedValue() throws IOException {
        do {
            int i11 = 0;
            while (true) {
                int i12 = this.pos;
                if (i12 + i11 < this.limit) {
                    char c11 = this.buffer[i12 + i11];
                    if (c11 != '\t' && c11 != '\n' && c11 != '\f' && c11 != '\r' && c11 != ' ') {
                        if (c11 != '#') {
                            if (c11 != ',') {
                                if (c11 != '/' && c11 != '=') {
                                    if (c11 != '{' && c11 != '}' && c11 != ':') {
                                        if (c11 != ';') {
                                            switch (c11) {
                                                case '[':
                                                case ']':
                                                    break;
                                                case '\\':
                                                    break;
                                                default:
                                                    i11++;
                                                    break;
                                            }
                                            return;
                                        }
                                    }
                                }
                            }
                        }
                        checkLenient();
                    }
                    this.pos += i11;
                    return;
                }
                this.pos = i12 + i11;
            }
        } while (fillBuffer(1));
    }

    private IOException syntaxError(String str) throws IOException {
        throw new MalformedJsonException(str + locationString());
    }

    public void beginArray() throws IOException {
        int iDoPeek = this.peeked;
        if (iDoPeek == 0) {
            iDoPeek = doPeek();
        }
        if (iDoPeek == 3) {
            push(1);
            this.pathIndices[this.stackSize - 1] = 0;
            this.peeked = 0;
        } else {
            throw new IllegalStateException("Expected BEGIN_ARRAY but was " + peek() + locationString());
        }
    }

    public void beginObject() throws IOException {
        int iDoPeek = this.peeked;
        if (iDoPeek == 0) {
            iDoPeek = doPeek();
        }
        if (iDoPeek == 1) {
            push(3);
            this.peeked = 0;
        } else {
            throw new IllegalStateException("Expected BEGIN_OBJECT but was " + peek() + locationString());
        }
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        this.peeked = 0;
        this.stack[0] = 8;
        this.stackSize = 1;
        this.f32749in.close();
    }

    int doPeek() throws IOException {
        int iNextNonWhitespace;
        int[] iArr = this.stack;
        int i11 = this.stackSize;
        int i12 = iArr[i11 - 1];
        if (i12 == 1) {
            iArr[i11 - 1] = 2;
        } else if (i12 == 2) {
            int iNextNonWhitespace2 = nextNonWhitespace(true);
            if (iNextNonWhitespace2 != 44) {
                if (iNextNonWhitespace2 != 59) {
                    if (iNextNonWhitespace2 != 93) {
                        throw syntaxError("Unterminated array");
                    }
                    this.peeked = 4;
                    return 4;
                }
                checkLenient();
            }
        } else {
            if (i12 == 3 || i12 == 5) {
                iArr[i11 - 1] = 4;
                if (i12 == 5 && (iNextNonWhitespace = nextNonWhitespace(true)) != 44) {
                    if (iNextNonWhitespace != 59) {
                        if (iNextNonWhitespace != 125) {
                            throw syntaxError("Unterminated object");
                        }
                        this.peeked = 2;
                        return 2;
                    }
                    checkLenient();
                }
                int iNextNonWhitespace3 = nextNonWhitespace(true);
                if (iNextNonWhitespace3 == 34) {
                    this.peeked = 13;
                    return 13;
                }
                if (iNextNonWhitespace3 == 39) {
                    checkLenient();
                    this.peeked = 12;
                    return 12;
                }
                if (iNextNonWhitespace3 == 125) {
                    if (i12 == 5) {
                        throw syntaxError("Expected name");
                    }
                    this.peeked = 2;
                    return 2;
                }
                checkLenient();
                this.pos--;
                if (!isLiteral((char) iNextNonWhitespace3)) {
                    throw syntaxError("Expected name");
                }
                this.peeked = 14;
                return 14;
            }
            if (i12 == 4) {
                iArr[i11 - 1] = 5;
                int iNextNonWhitespace4 = nextNonWhitespace(true);
                if (iNextNonWhitespace4 != 58) {
                    if (iNextNonWhitespace4 != 61) {
                        throw syntaxError("Expected ':'");
                    }
                    checkLenient();
                    if (this.pos < this.limit || fillBuffer(1)) {
                        char[] cArr = this.buffer;
                        int i13 = this.pos;
                        if (cArr[i13] == '>') {
                            this.pos = i13 + 1;
                        }
                    }
                }
            } else if (i12 == 6) {
                if (this.lenient) {
                    consumeNonExecutePrefix();
                }
                this.stack[this.stackSize - 1] = 7;
            } else if (i12 == 7) {
                if (nextNonWhitespace(false) == -1) {
                    this.peeked = 17;
                    return 17;
                }
                checkLenient();
                this.pos--;
            } else if (i12 == 8) {
                throw new IllegalStateException("JsonReader is closed");
            }
        }
        int iNextNonWhitespace5 = nextNonWhitespace(true);
        if (iNextNonWhitespace5 == 34) {
            this.peeked = 9;
            return 9;
        }
        if (iNextNonWhitespace5 == 39) {
            checkLenient();
            this.peeked = 8;
            return 8;
        }
        if (iNextNonWhitespace5 != 44 && iNextNonWhitespace5 != 59) {
            if (iNextNonWhitespace5 == 91) {
                this.peeked = 3;
                return 3;
            }
            if (iNextNonWhitespace5 != 93) {
                if (iNextNonWhitespace5 == 123) {
                    this.peeked = 1;
                    return 1;
                }
                this.pos--;
                int iPeekKeyword = peekKeyword();
                if (iPeekKeyword != 0) {
                    return iPeekKeyword;
                }
                int iPeekNumber = peekNumber();
                if (iPeekNumber != 0) {
                    return iPeekNumber;
                }
                if (!isLiteral(this.buffer[this.pos])) {
                    throw syntaxError("Expected value");
                }
                checkLenient();
                this.peeked = 10;
                return 10;
            }
            if (i12 == 1) {
                this.peeked = 4;
                return 4;
            }
        }
        if (i12 != 1 && i12 != 2) {
            throw syntaxError("Unexpected value");
        }
        checkLenient();
        this.pos--;
        this.peeked = 7;
        return 7;
    }

    public void endArray() throws IOException {
        int iDoPeek = this.peeked;
        if (iDoPeek == 0) {
            iDoPeek = doPeek();
        }
        if (iDoPeek != 4) {
            throw new IllegalStateException("Expected END_ARRAY but was " + peek() + locationString());
        }
        int i11 = this.stackSize;
        this.stackSize = i11 - 1;
        int[] iArr = this.pathIndices;
        int i12 = i11 - 2;
        iArr[i12] = iArr[i12] + 1;
        this.peeked = 0;
    }

    public void endObject() throws IOException {
        int iDoPeek = this.peeked;
        if (iDoPeek == 0) {
            iDoPeek = doPeek();
        }
        if (iDoPeek != 2) {
            throw new IllegalStateException("Expected END_OBJECT but was " + peek() + locationString());
        }
        int i11 = this.stackSize;
        int i12 = i11 - 1;
        this.stackSize = i12;
        this.pathNames[i12] = null;
        int[] iArr = this.pathIndices;
        int i13 = i11 - 2;
        iArr[i13] = iArr[i13] + 1;
        this.peeked = 0;
    }

    public String getPath() {
        return getPath(false);
    }

    public String getPreviousPath() {
        return getPath(true);
    }

    public boolean hasNext() throws IOException {
        int iDoPeek = this.peeked;
        if (iDoPeek == 0) {
            iDoPeek = doPeek();
        }
        return (iDoPeek == 2 || iDoPeek == 4 || iDoPeek == 17) ? false : true;
    }

    public final boolean isLenient() {
        return this.lenient;
    }

    String locationString() {
        return " at line " + (this.lineNumber + 1) + " column " + ((this.pos - this.lineStart) + 1) + " path " + getPath();
    }

    public boolean nextBoolean() throws IOException {
        int iDoPeek = this.peeked;
        if (iDoPeek == 0) {
            iDoPeek = doPeek();
        }
        if (iDoPeek == 5) {
            this.peeked = 0;
            int[] iArr = this.pathIndices;
            int i11 = this.stackSize - 1;
            iArr[i11] = iArr[i11] + 1;
            return true;
        }
        if (iDoPeek == 6) {
            this.peeked = 0;
            int[] iArr2 = this.pathIndices;
            int i12 = this.stackSize - 1;
            iArr2[i12] = iArr2[i12] + 1;
            return false;
        }
        throw new IllegalStateException("Expected a boolean but was " + peek() + locationString());
    }

    public double nextDouble() throws IOException {
        int iDoPeek = this.peeked;
        if (iDoPeek == 0) {
            iDoPeek = doPeek();
        }
        if (iDoPeek == 15) {
            this.peeked = 0;
            int[] iArr = this.pathIndices;
            int i11 = this.stackSize - 1;
            iArr[i11] = iArr[i11] + 1;
            return this.peekedLong;
        }
        if (iDoPeek == 16) {
            this.peekedString = new String(this.buffer, this.pos, this.peekedNumberLength);
            this.pos += this.peekedNumberLength;
        } else if (iDoPeek == 8 || iDoPeek == 9) {
            this.peekedString = nextQuotedValue(iDoPeek == 8 ? '\'' : '\"');
        } else if (iDoPeek == 10) {
            this.peekedString = nextUnquotedValue();
        } else if (iDoPeek != 11) {
            throw new IllegalStateException("Expected a double but was " + peek() + locationString());
        }
        this.peeked = 11;
        double d11 = Double.parseDouble(this.peekedString);
        if (!this.lenient && (Double.isNaN(d11) || Double.isInfinite(d11))) {
            throw new MalformedJsonException("JSON forbids NaN and infinities: " + d11 + locationString());
        }
        this.peekedString = null;
        this.peeked = 0;
        int[] iArr2 = this.pathIndices;
        int i12 = this.stackSize - 1;
        iArr2[i12] = iArr2[i12] + 1;
        return d11;
    }

    public int nextInt() throws IOException {
        int iDoPeek = this.peeked;
        if (iDoPeek == 0) {
            iDoPeek = doPeek();
        }
        if (iDoPeek == 15) {
            long j11 = this.peekedLong;
            int i11 = (int) j11;
            if (j11 == i11) {
                this.peeked = 0;
                int[] iArr = this.pathIndices;
                int i12 = this.stackSize - 1;
                iArr[i12] = iArr[i12] + 1;
                return i11;
            }
            throw new NumberFormatException("Expected an int but was " + this.peekedLong + locationString());
        }
        if (iDoPeek == 16) {
            this.peekedString = new String(this.buffer, this.pos, this.peekedNumberLength);
            this.pos += this.peekedNumberLength;
        } else {
            if (iDoPeek != 8 && iDoPeek != 9 && iDoPeek != 10) {
                throw new IllegalStateException("Expected an int but was " + peek() + locationString());
            }
            if (iDoPeek == 10) {
                this.peekedString = nextUnquotedValue();
            } else {
                this.peekedString = nextQuotedValue(iDoPeek == 8 ? '\'' : '\"');
            }
            try {
                int i13 = Integer.parseInt(this.peekedString);
                this.peeked = 0;
                int[] iArr2 = this.pathIndices;
                int i14 = this.stackSize - 1;
                iArr2[i14] = iArr2[i14] + 1;
                return i13;
            } catch (NumberFormatException unused) {
            }
        }
        this.peeked = 11;
        double d11 = Double.parseDouble(this.peekedString);
        int i15 = (int) d11;
        if (i15 != d11) {
            throw new NumberFormatException("Expected an int but was " + this.peekedString + locationString());
        }
        this.peekedString = null;
        this.peeked = 0;
        int[] iArr3 = this.pathIndices;
        int i16 = this.stackSize - 1;
        iArr3[i16] = iArr3[i16] + 1;
        return i15;
    }

    public long nextLong() throws IOException {
        int iDoPeek = this.peeked;
        if (iDoPeek == 0) {
            iDoPeek = doPeek();
        }
        if (iDoPeek == 15) {
            this.peeked = 0;
            int[] iArr = this.pathIndices;
            int i11 = this.stackSize - 1;
            iArr[i11] = iArr[i11] + 1;
            return this.peekedLong;
        }
        if (iDoPeek == 16) {
            this.peekedString = new String(this.buffer, this.pos, this.peekedNumberLength);
            this.pos += this.peekedNumberLength;
        } else {
            if (iDoPeek != 8 && iDoPeek != 9 && iDoPeek != 10) {
                throw new IllegalStateException("Expected a long but was " + peek() + locationString());
            }
            if (iDoPeek == 10) {
                this.peekedString = nextUnquotedValue();
            } else {
                this.peekedString = nextQuotedValue(iDoPeek == 8 ? '\'' : '\"');
            }
            try {
                long j11 = Long.parseLong(this.peekedString);
                this.peeked = 0;
                int[] iArr2 = this.pathIndices;
                int i12 = this.stackSize - 1;
                iArr2[i12] = iArr2[i12] + 1;
                return j11;
            } catch (NumberFormatException unused) {
            }
        }
        this.peeked = 11;
        double d11 = Double.parseDouble(this.peekedString);
        long j12 = (long) d11;
        if (j12 != d11) {
            throw new NumberFormatException("Expected a long but was " + this.peekedString + locationString());
        }
        this.peekedString = null;
        this.peeked = 0;
        int[] iArr3 = this.pathIndices;
        int i13 = this.stackSize - 1;
        iArr3[i13] = iArr3[i13] + 1;
        return j12;
    }

    public String nextName() throws IOException {
        String strNextQuotedValue;
        int iDoPeek = this.peeked;
        if (iDoPeek == 0) {
            iDoPeek = doPeek();
        }
        if (iDoPeek == 14) {
            strNextQuotedValue = nextUnquotedValue();
        } else if (iDoPeek == 12) {
            strNextQuotedValue = nextQuotedValue('\'');
        } else {
            if (iDoPeek != 13) {
                throw new IllegalStateException("Expected a name but was " + peek() + locationString());
            }
            strNextQuotedValue = nextQuotedValue('\"');
        }
        this.peeked = 0;
        this.pathNames[this.stackSize - 1] = strNextQuotedValue;
        return strNextQuotedValue;
    }

    public void nextNull() throws IOException {
        int iDoPeek = this.peeked;
        if (iDoPeek == 0) {
            iDoPeek = doPeek();
        }
        if (iDoPeek == 7) {
            this.peeked = 0;
            int[] iArr = this.pathIndices;
            int i11 = this.stackSize - 1;
            iArr[i11] = iArr[i11] + 1;
            return;
        }
        throw new IllegalStateException("Expected null but was " + peek() + locationString());
    }

    public String nextString() throws IOException {
        String str;
        int iDoPeek = this.peeked;
        if (iDoPeek == 0) {
            iDoPeek = doPeek();
        }
        if (iDoPeek == 10) {
            str = nextUnquotedValue();
        } else if (iDoPeek == 8) {
            str = nextQuotedValue('\'');
        } else if (iDoPeek == 9) {
            str = nextQuotedValue('\"');
        } else if (iDoPeek == 11) {
            str = this.peekedString;
            this.peekedString = null;
        } else if (iDoPeek == 15) {
            str = Long.toString(this.peekedLong);
        } else {
            if (iDoPeek != 16) {
                throw new IllegalStateException("Expected a string but was " + peek() + locationString());
            }
            str = new String(this.buffer, this.pos, this.peekedNumberLength);
            this.pos += this.peekedNumberLength;
        }
        this.peeked = 0;
        int[] iArr = this.pathIndices;
        int i11 = this.stackSize - 1;
        iArr[i11] = iArr[i11] + 1;
        return str;
    }

    public JsonToken peek() throws IOException {
        int iDoPeek = this.peeked;
        if (iDoPeek == 0) {
            iDoPeek = doPeek();
        }
        switch (iDoPeek) {
            case 1:
                return JsonToken.BEGIN_OBJECT;
            case 2:
                return JsonToken.END_OBJECT;
            case 3:
                return JsonToken.BEGIN_ARRAY;
            case 4:
                return JsonToken.END_ARRAY;
            case 5:
            case 6:
                return JsonToken.BOOLEAN;
            case 7:
                return JsonToken.NULL;
            case 8:
            case 9:
            case 10:
            case 11:
                return JsonToken.STRING;
            case 12:
            case 13:
            case 14:
                return JsonToken.NAME;
            case 15:
            case 16:
                return JsonToken.NUMBER;
            case 17:
                return JsonToken.END_DOCUMENT;
            default:
                throw new AssertionError();
        }
    }

    public final void setLenient(boolean z10) {
        this.lenient = z10;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    public void skipValue() throws IOException {
        int i11 = 0;
        do {
            int iDoPeek = this.peeked;
            if (iDoPeek == 0) {
                iDoPeek = doPeek();
            }
            switch (iDoPeek) {
                case 1:
                    push(3);
                    i11++;
                    this.peeked = 0;
                    break;
                case 2:
                    if (i11 == 0) {
                        this.pathNames[this.stackSize - 1] = null;
                    }
                    this.stackSize--;
                    i11--;
                    this.peeked = 0;
                    break;
                case 3:
                    push(1);
                    i11++;
                    this.peeked = 0;
                    break;
                case 4:
                    this.stackSize--;
                    i11--;
                    this.peeked = 0;
                    break;
                case 5:
                case 6:
                case 7:
                case 11:
                case 15:
                default:
                    this.peeked = 0;
                    break;
                case 8:
                    skipQuotedValue('\'');
                    this.peeked = 0;
                    break;
                case 9:
                    skipQuotedValue('\"');
                    this.peeked = 0;
                    break;
                case 10:
                    skipUnquotedValue();
                    this.peeked = 0;
                    break;
                case 12:
                    skipQuotedValue('\'');
                    if (i11 == 0) {
                        this.pathNames[this.stackSize - 1] = "<skipped>";
                    }
                    this.peeked = 0;
                    break;
                case 13:
                    skipQuotedValue('\"');
                    if (i11 == 0) {
                        this.pathNames[this.stackSize - 1] = "<skipped>";
                    }
                    this.peeked = 0;
                    break;
                case 14:
                    skipUnquotedValue();
                    if (i11 == 0) {
                        this.pathNames[this.stackSize - 1] = "<skipped>";
                    }
                    this.peeked = 0;
                    break;
                case 16:
                    this.pos += this.peekedNumberLength;
                    this.peeked = 0;
                    break;
                case 17:
                    break;
            }
            return;
        } while (i11 > 0);
        int[] iArr = this.pathIndices;
        int i12 = this.stackSize - 1;
        iArr[i12] = iArr[i12] + 1;
    }

    public String toString() {
        return getClass().getSimpleName() + locationString();
    }
}
