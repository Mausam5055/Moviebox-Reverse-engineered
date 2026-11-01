package m10;

import android.support.v4.media.session.c;
import com.cloud.tmc.offline.download.model.TaskResultKt;
import java.math.BigDecimal;
import java.math.BigInteger;
import java.math.MathContext;
import java.util.ArrayList;
import java.util.Collection;
import org.mvel2.b;
import org.mvel2.compiler.BlankLiteral;
import org.mvel2.util.InternalNumber;
import org.mvel2.util.m;
import org.mvel2.util.r;

/* JADX INFO: loaded from: classes7.dex */
public class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final MathContext f69099a = MathContext.DECIMAL128;

    private static Object a(int i11, Object obj, int i12, int i13, Object obj2) {
        if (i12 < 20) {
            if (((i11 > 49 || i12 == 18 || i12 == 19) && i11 == i13) || (l(i11) && l(i13) && i12 >= 6 && i12 <= 13)) {
                return h(i11, obj, i12, obj2);
            }
            if (m(i11, obj, i12, i13, obj2)) {
                return i(k(obj, i11), i12, k(obj2, i13), true, b(i13) > b(i11) ? b(i13) : b(i11));
            }
            if (i12 != 0 && ((i11 == 15 || i13 == 15) && i11 != i13 && i11 != 200 && i13 != 200)) {
                return d(i11, b.b(obj, Boolean.class), i12, b.b(obj2, Boolean.class));
            }
            if ((i11 == 1 || i13 == 1) && (i11 == 8 || i11 == 112 || i13 == 8 || i13 == 112)) {
                return i11 == 1 ? d(i11, obj, i12, String.valueOf(obj2)) : d(i11, String.valueOf(obj), i12, obj2);
            }
        }
        return d(i11, obj, i12, obj2);
    }

    private static int b(int i11) {
        if (i11 == 7) {
            return 15;
        }
        if (i11 == 8) {
            return 112;
        }
        if (i11 == 9) {
            return 113;
        }
        switch (i11) {
            case 100:
                return 105;
            case 101:
                return 106;
            case 102:
                return 107;
            case 103:
                return 109;
            case 104:
                return TaskResultKt.ERROR_LOAD_RESPONSE_STR_EMPTY;
            default:
                return i11;
        }
    }

    private static Object c(BigDecimal bigDecimal, int i11, BigDecimal bigDecimal2, boolean z10, int i12) {
        if (i11 == 0) {
            return z10 ? m.r0(bigDecimal.add(bigDecimal2, f69099a), i12) : bigDecimal.add(bigDecimal2, f69099a);
        }
        if (i11 == 1) {
            return z10 ? m.r0(bigDecimal.subtract(bigDecimal2, f69099a), i12) : bigDecimal.subtract(bigDecimal2, f69099a);
        }
        if (i11 == 2) {
            return z10 ? m.r0(bigDecimal.multiply(bigDecimal2, f69099a), i12) : bigDecimal.multiply(bigDecimal2, f69099a);
        }
        if (i11 == 3) {
            return z10 ? m.r0(bigDecimal.divide(bigDecimal2, f69099a), i12) : bigDecimal.divide(bigDecimal2, f69099a);
        }
        if (i11 == 4) {
            return z10 ? m.r0(bigDecimal.remainder(bigDecimal2), i12) : bigDecimal.remainder(bigDecimal2);
        }
        if (i11 == 5) {
            return z10 ? m.r0(bigDecimal.pow(bigDecimal2.intValue(), f69099a), i12) : bigDecimal.pow(bigDecimal2.intValue(), f69099a);
        }
        switch (i11) {
            case 14:
                return bigDecimal.compareTo(bigDecimal2) == -1 ? Boolean.TRUE : Boolean.FALSE;
            case 15:
                return bigDecimal.compareTo(bigDecimal2) == 1 ? Boolean.TRUE : Boolean.FALSE;
            case 16:
                return bigDecimal.compareTo(bigDecimal2) <= 0 ? Boolean.TRUE : Boolean.FALSE;
            case 17:
                return bigDecimal.compareTo(bigDecimal2) >= 0 ? Boolean.TRUE : Boolean.FALSE;
            case 18:
                return bigDecimal.compareTo(bigDecimal2) == 0 ? Boolean.TRUE : Boolean.FALSE;
            case 19:
                return bigDecimal.compareTo(bigDecimal2) != 0 ? Boolean.TRUE : Boolean.FALSE;
            default:
                return null;
        }
    }

    /* JADX WARN: Code duplicated, block: B:43:0x00cf A[Catch: ClassCastException -> 0x00cd, TRY_LEAVE, TryCatch #1 {ClassCastException -> 0x00cd, blocks: (B:38:0x00c1, B:40:0x00ca, B:43:0x00cf), top: B:108:0x00c1 }] */
    /* JADX WARN: Code duplicated, block: B:57:0x0107 A[Catch: ClassCastException -> 0x0105, TRY_LEAVE, TryCatch #0 {ClassCastException -> 0x0105, blocks: (B:52:0x00f9, B:54:0x0102, B:57:0x0107), top: B:105:0x00f9 }] */
    /* JADX WARN: Code duplicated, block: B:71:0x0140 A[Catch: ClassCastException -> 0x013e, TRY_LEAVE, TryCatch #2 {ClassCastException -> 0x013e, blocks: (B:66:0x0131, B:68:0x013b, B:71:0x0140), top: B:111:0x0131 }] */
    /* JADX WARN: Code duplicated, block: B:91:0x019a  */
    private static Object d(int i11, Object obj, int i12, Object obj2) {
        Boolean bool;
        Boolean bool2;
        Boolean bool3;
        if (i12 == 0) {
            if (i11 == 50) {
                ArrayList arrayList = new ArrayList((Collection) obj);
                arrayList.add(obj2);
                return arrayList;
            }
            return String.valueOf(obj) + String.valueOf(obj2);
        }
        boolean z10 = true;
        if (i12 != 1 && i12 != 2 && i12 != 3 && i12 != 4) {
            if (i12 == 27) {
                return Boolean.valueOf(r.a(String.valueOf(obj)).equals(r.a(String.valueOf(obj2))));
            }
            switch (i12) {
                case 14:
                    if (!(obj instanceof Comparable)) {
                        return Boolean.FALSE;
                    }
                    if (obj2 != null) {
                        try {
                            if (((Comparable) obj).compareTo(obj2) <= -1) {
                                bool = Boolean.TRUE;
                            } else {
                                bool = Boolean.FALSE;
                            }
                        } catch (ClassCastException e11) {
                            throw new RuntimeException("uncomparable values <<" + obj + ">> and <<" + obj2 + ">>", e11);
                        }
                    } else {
                        bool = Boolean.FALSE;
                    }
                    return bool;
                case 15:
                    break;
                case 16:
                    if (!(obj instanceof Comparable)) {
                        return Boolean.FALSE;
                    }
                    if (obj2 != null) {
                        try {
                            if (((Comparable) obj).compareTo(obj2) <= 0) {
                                bool2 = Boolean.TRUE;
                            } else {
                                bool2 = Boolean.FALSE;
                            }
                        } catch (ClassCastException e12) {
                            throw new RuntimeException("uncomparable values <<" + obj + ">> and <<" + obj2 + ">>", e12);
                        }
                    } else {
                        bool2 = Boolean.FALSE;
                    }
                    return bool2;
                case 17:
                    if (!(obj instanceof Comparable)) {
                        return Boolean.FALSE;
                    }
                    if (obj2 != null) {
                        try {
                            if (((Comparable) obj).compareTo(obj2) >= 0) {
                                bool3 = Boolean.TRUE;
                            } else {
                                bool3 = Boolean.FALSE;
                            }
                        } catch (ClassCastException e13) {
                            throw new RuntimeException("uncomparable values <<" + obj + ">> and <<" + obj2 + ">>", e13);
                        }
                    } else {
                        bool3 = Boolean.FALSE;
                    }
                    return bool3;
                case 18:
                    return n(obj2, obj).booleanValue() ? Boolean.TRUE : Boolean.FALSE;
                case 19:
                    return o(obj2, obj).booleanValue() ? Boolean.TRUE : Boolean.FALSE;
                case 20:
                    return String.valueOf(obj) + String.valueOf(obj2);
                default:
                    StringBuilder sb2 = new StringBuilder();
                    sb2.append("could not perform numeric operation on non-numeric types: left-type=");
                    sb2.append(obj != null ? obj.getClass().getName() : "null");
                    sb2.append("; right-type=");
                    sb2.append(obj2 != null ? obj2.getClass().getName() : "null");
                    sb2.append(" [vals (");
                    sb2.append(String.valueOf(obj));
                    sb2.append(", ");
                    sb2.append(String.valueOf(obj2));
                    sb2.append(") operation=");
                    sb2.append(j10.a.a(i12));
                    sb2.append(" (opcode:");
                    sb2.append(i12);
                    sb2.append(") ]");
                    throw new RuntimeException(sb2.toString());
            }
        }
        if (!(obj instanceof Comparable)) {
            return Boolean.FALSE;
        }
        if (obj2 != null) {
            try {
                if (!(((Comparable) obj).compareTo(obj2) >= 1 ? Boolean.TRUE : Boolean.FALSE).booleanValue()) {
                    z10 = false;
                }
            } catch (ClassCastException e14) {
                throw new RuntimeException("uncomparable values <<" + obj + ">> and <<" + obj2 + ">>", e14);
            }
        } else {
            z10 = false;
        }
        return Boolean.valueOf(z10);
    }

    public static Object e(int i11, Object obj, int i12, int i13, Object obj2) {
        if (i11 == -1) {
            i11 = obj == null ? 0 : m.a(obj.getClass());
        }
        if (i13 == -1) {
            i13 = obj2 == null ? 0 : m.a(obj2.getClass());
        }
        if (i11 != 110) {
            return a(i11, obj, i12, i13, obj2);
        }
        if (i13 != 110) {
            return i13 > 99 ? c((BigDecimal) obj, i12, j(obj2, i13), false, -1) : a(i11, obj, i12, i13, obj2);
        }
        return c((BigDecimal) obj, i12, (BigDecimal) obj2, false, -1);
    }

    public static Object f(Object obj, int i11, int i12, Object obj2) {
        return e(obj == null ? 0 : m.a(obj.getClass()), obj, i11, i12, obj2);
    }

    public static Object g(Object obj, int i11, Object obj2) {
        return e(obj == null ? 0 : m.a(obj.getClass()), obj, i11, obj2 == null ? -1 : m.a(obj2.getClass()), obj2);
    }

    /* JADX WARN: Code duplicated, block: B:189:0x0421  */
    /* JADX WARN: Code duplicated, block: B:191:0x0431  */
    /* JADX WARN: Code duplicated, block: B:192:0x0434  */
    /* JADX WARN: Code duplicated, block: B:194:0x0437  */
    /* JADX WARN: Code duplicated, block: B:196:0x0447  */
    /* JADX WARN: Code duplicated, block: B:197:0x044a  */
    /* JADX WARN: Code duplicated, block: B:199:0x044d  */
    /* JADX WARN: Code duplicated, block: B:201:0x045d  */
    /* JADX WARN: Code duplicated, block: B:202:0x0460  */
    /* JADX WARN: Code duplicated, block: B:204:0x0463  */
    /* JADX WARN: Code duplicated, block: B:206:0x0473  */
    /* JADX WARN: Code duplicated, block: B:207:0x0476  */
    /* JADX WARN: Code duplicated, block: B:209:0x0479  */
    /* JADX WARN: Code duplicated, block: B:211:0x0489  */
    /* JADX WARN: Code duplicated, block: B:212:0x048c  */
    /* JADX WARN: Code duplicated, block: B:214:0x048f  */
    /* JADX WARN: Code duplicated, block: B:216:0x049f  */
    /* JADX WARN: Code duplicated, block: B:217:0x04a2  */
    /* JADX WARN: Code duplicated, block: B:219:0x04a5  */
    /* JADX WARN: Code duplicated, block: B:221:0x04ad  */
    /* JADX WARN: Code duplicated, block: B:223:0x04b1  */
    /* JADX WARN: Code duplicated, block: B:225:0x04c3  */
    /* JADX WARN: Code duplicated, block: B:227:0x04d6  */
    /* JADX WARN: Code duplicated, block: B:229:0x04da  */
    /* JADX WARN: Code duplicated, block: B:231:0x04ec  */
    /* JADX WARN: Code duplicated, block: B:233:0x04ff  */
    /* JADX WARN: Code duplicated, block: B:235:0x0503  */
    /* JADX WARN: Code duplicated, block: B:237:0x0515  */
    /* JADX WARN: Code duplicated, block: B:239:0x0528  */
    /* JADX WARN: Code duplicated, block: B:241:0x052c  */
    /* JADX WARN: Code duplicated, block: B:243:0x053f  */
    /* JADX WARN: Code duplicated, block: B:245:0x0551  */
    /* JADX WARN: Code duplicated, block: B:247:0x0555  */
    /* JADX WARN: Code duplicated, block: B:249:0x0568  */
    /* JADX WARN: Code duplicated, block: B:251:0x057a  */
    /* JADX WARN: Code duplicated, block: B:253:0x057e  */
    /* JADX WARN: Code duplicated, block: B:255:0x0591  */
    /* JADX WARN: Code duplicated, block: B:257:0x05a3  */
    /* JADX WARN: Code duplicated, block: B:259:0x05bb  */
    /* JADX WARN: Code duplicated, block: B:261:0x05c0  */
    /* JADX WARN: Code duplicated, block: B:263:0x05c6  */
    /* JADX WARN: Code duplicated, block: B:265:0x05d8  */
    /* JADX WARN: Code duplicated, block: B:267:0x05ea  */
    /* JADX WARN: Code duplicated, block: B:269:0x05fc  */
    /* JADX WARN: Code duplicated, block: B:271:0x060e  */
    /* JADX WARN: Code duplicated, block: B:333:0x0789  */
    /* JADX WARN: Code duplicated, block: B:344:0x07b5  */
    /* JADX WARN: Code duplicated, block: B:346:0x07bf  */
    /* JADX WARN: Code duplicated, block: B:347:0x07c2  */
    /* JADX WARN: Code duplicated, block: B:349:0x07c5  */
    /* JADX WARN: Code duplicated, block: B:351:0x07cf  */
    /* JADX WARN: Code duplicated, block: B:352:0x07d2  */
    /* JADX WARN: Code duplicated, block: B:354:0x07d5  */
    /* JADX WARN: Code duplicated, block: B:356:0x07df  */
    /* JADX WARN: Code duplicated, block: B:357:0x07e2  */
    /* JADX WARN: Code duplicated, block: B:359:0x07e5  */
    /* JADX WARN: Code duplicated, block: B:361:0x07ef  */
    /* JADX WARN: Code duplicated, block: B:362:0x07f2  */
    /* JADX WARN: Code duplicated, block: B:364:0x07f5  */
    /* JADX WARN: Code duplicated, block: B:366:0x07ff  */
    /* JADX WARN: Code duplicated, block: B:367:0x0802  */
    /* JADX WARN: Code duplicated, block: B:369:0x0805  */
    /* JADX WARN: Code duplicated, block: B:371:0x080f  */
    /* JADX WARN: Code duplicated, block: B:372:0x0812  */
    /* JADX WARN: Code duplicated, block: B:374:0x0815  */
    /* JADX WARN: Code duplicated, block: B:376:0x081d  */
    /* JADX WARN: Code duplicated, block: B:378:0x082a  */
    /* JADX WARN: Code duplicated, block: B:380:0x0833  */
    /* JADX WARN: Code duplicated, block: B:382:0x083c  */
    /* JADX WARN: Code duplicated, block: B:384:0x0845  */
    /* JADX WARN: Code duplicated, block: B:386:0x084e  */
    /* JADX WARN: Switch 'out' block B:333:0x0789 for B:11:0x001a already processed. Defaulting to fallback option. */
    private static Object h(int i11, Object obj, int i12, Object obj2) {
        if (i11 == 50) {
            if (i12 == 0) {
                ArrayList arrayList = new ArrayList((Collection) obj);
                arrayList.addAll((Collection) obj2);
                return arrayList;
            }
            if (i12 == 18) {
                return Boolean.valueOf(obj.equals(obj2));
            }
            if (i12 == 19) {
                return Boolean.valueOf(!obj.equals(obj2));
            }
            throw new UnsupportedOperationException("illegal operation on Collection type");
        }
        if (i11 == 111) {
            switch (i12) {
                case 0:
                    return ((BigInteger) obj).add((BigInteger) obj2);
                case 1:
                    return ((BigInteger) obj).subtract((BigInteger) obj2);
                case 2:
                    return ((BigInteger) obj).multiply((BigInteger) obj2);
                case 3:
                    return ((BigInteger) obj).divide((BigInteger) obj2);
                case 4:
                    return ((BigInteger) obj).remainder((BigInteger) obj2);
                case 5:
                    return ((BigInteger) obj).pow(((BigInteger) obj2).intValue());
                case 6:
                case 7:
                case 8:
                case 9:
                case 10:
                case 11:
                    throw new RuntimeException("bitwise operation on a number greater than 32-bits not possible");
                case 14:
                    return ((BigInteger) obj).compareTo((BigInteger) obj2) == -1 ? Boolean.TRUE : Boolean.FALSE;
                case 15:
                    return ((BigInteger) obj).compareTo((BigInteger) obj2) == 1 ? Boolean.TRUE : Boolean.FALSE;
                case 16:
                    return ((BigInteger) obj).compareTo((BigInteger) obj2) <= 0 ? Boolean.TRUE : Boolean.FALSE;
                case 17:
                    return ((BigInteger) obj).compareTo((BigInteger) obj2) >= 0 ? Boolean.TRUE : Boolean.FALSE;
                case 18:
                    return ((BigInteger) obj).compareTo((BigInteger) obj2) == 0 ? Boolean.TRUE : Boolean.FALSE;
                case 19:
                    return ((BigInteger) obj).compareTo((BigInteger) obj2) != 0 ? Boolean.TRUE : Boolean.FALSE;
            }
        }
        if (i11 != 300) {
            switch (i11) {
                case 101:
                case 106:
                    switch (i12) {
                        case 0:
                            return Integer.valueOf(((Integer) obj).intValue() + ((Integer) obj2).intValue());
                        case 1:
                            return Integer.valueOf(((Integer) obj).intValue() - ((Integer) obj2).intValue());
                        case 2:
                            return Integer.valueOf(((Integer) obj).intValue() * ((Integer) obj2).intValue());
                        case 3:
                            return Double.valueOf(((Integer) obj).doubleValue() / ((Integer) obj2).doubleValue());
                        case 4:
                            return Integer.valueOf(((Integer) obj).intValue() % ((Integer) obj2).intValue());
                        case 5:
                            double dPow = Math.pow(((Integer) obj).intValue(), ((Integer) obj2).intValue());
                            return dPow > 2.147483647E9d ? Double.valueOf(dPow) : Integer.valueOf((int) dPow);
                        case 6:
                            return obj2 instanceof Long ? Long.valueOf(((long) ((Integer) obj).intValue()) & ((Long) obj2).longValue()) : Integer.valueOf(((Integer) obj).intValue() & ((Integer) obj2).intValue());
                        case 7:
                            return obj2 instanceof Long ? Long.valueOf(((long) ((Integer) obj).intValue()) | ((Long) obj2).longValue()) : Integer.valueOf(((Integer) obj).intValue() | ((Integer) obj2).intValue());
                        case 8:
                            return obj2 instanceof Long ? Long.valueOf(((long) ((Integer) obj).intValue()) ^ ((Long) obj2).longValue()) : Integer.valueOf(((Integer) obj).intValue() ^ ((Integer) obj2).intValue());
                        case 9:
                            return obj2 instanceof Long ? Integer.valueOf(((Integer) obj).intValue() >> ((int) ((Long) obj2).longValue())) : Integer.valueOf(((Integer) obj).intValue() >> ((Integer) obj2).intValue());
                        case 10:
                            return obj2 instanceof Long ? Integer.valueOf(((Integer) obj).intValue() << ((int) ((Long) obj2).longValue())) : Integer.valueOf(((Integer) obj).intValue() << ((Integer) obj2).intValue());
                        case 11:
                            return obj2 instanceof Long ? Integer.valueOf(((Integer) obj).intValue() >>> ((int) ((Long) obj2).longValue())) : Integer.valueOf(((Integer) obj).intValue() >>> ((Integer) obj2).intValue());
                        case 14:
                            return ((Integer) obj).intValue() < ((Integer) obj2).intValue() ? Boolean.TRUE : Boolean.FALSE;
                        case 15:
                            return ((Integer) obj).intValue() > ((Integer) obj2).intValue() ? Boolean.TRUE : Boolean.FALSE;
                        case 16:
                            return ((Integer) obj).intValue() <= ((Integer) obj2).intValue() ? Boolean.TRUE : Boolean.FALSE;
                        case 17:
                            return ((Integer) obj).intValue() >= ((Integer) obj2).intValue() ? Boolean.TRUE : Boolean.FALSE;
                        case 18:
                            return ((Integer) obj).intValue() == ((Integer) obj2).intValue() ? Boolean.TRUE : Boolean.FALSE;
                        case 19:
                            return ((Integer) obj).intValue() != ((Integer) obj2).intValue() ? Boolean.TRUE : Boolean.FALSE;
                    }
                    switch (i12) {
                        case 0:
                            return Long.valueOf(((Long) obj).longValue() + ((Long) obj2).longValue());
                        case 1:
                            return Long.valueOf(((Long) obj).longValue() - ((Long) obj2).longValue());
                        case 2:
                            return Long.valueOf(((Long) obj).longValue() * ((Long) obj2).longValue());
                        case 3:
                            return Double.valueOf(((Long) obj).doubleValue() / ((Long) obj2).doubleValue());
                        case 4:
                            return Long.valueOf(((Long) obj).longValue() % ((Long) obj2).longValue());
                        case 5:
                            double dPow2 = Math.pow(((Long) obj).longValue(), ((Long) obj2).longValue());
                            return dPow2 > 9.223372036854776E18d ? Double.valueOf(dPow2) : Long.valueOf((long) dPow2);
                        case 6:
                            return obj2 instanceof Integer ? Long.valueOf(((Long) obj).longValue() & ((long) ((Integer) obj2).intValue())) : Long.valueOf(((Long) obj).longValue() & ((Long) obj2).longValue());
                        case 7:
                            return obj2 instanceof Integer ? Long.valueOf(((Long) obj).longValue() | ((long) ((Integer) obj2).intValue())) : Long.valueOf(((Long) obj).longValue() | ((Long) obj2).longValue());
                        case 8:
                            return obj2 instanceof Integer ? Long.valueOf(((Long) obj).longValue() ^ ((long) ((Integer) obj2).intValue())) : Long.valueOf(((Long) obj).longValue() ^ ((Long) obj2).longValue());
                        case 9:
                            return obj2 instanceof Integer ? Long.valueOf(((Long) obj).longValue() >> ((Integer) obj2).intValue()) : Long.valueOf(((Long) obj).longValue() >> ((int) ((Long) obj2).longValue()));
                        case 10:
                            return obj2 instanceof Integer ? Long.valueOf(((Long) obj).longValue() << ((Integer) obj2).intValue()) : Long.valueOf(((Long) obj).longValue() << ((int) ((Long) obj2).longValue()));
                        case 11:
                            return obj2 instanceof Integer ? Long.valueOf(((Long) obj).longValue() >>> ((Integer) obj2).intValue()) : Long.valueOf(((Long) obj).longValue() >>> ((int) ((Long) obj2).longValue()));
                        case 12:
                            throw new UnsupportedOperationException("unsigned left-shift not supported");
                        case 14:
                            return ((Long) obj).longValue() < ((Long) obj2).longValue() ? Boolean.TRUE : Boolean.FALSE;
                        case 15:
                            return ((Long) obj).longValue() > ((Long) obj2).longValue() ? Boolean.TRUE : Boolean.FALSE;
                        case 16:
                            return ((Long) obj).longValue() <= ((Long) obj2).longValue() ? Boolean.TRUE : Boolean.FALSE;
                        case 17:
                            return ((Long) obj).longValue() >= ((Long) obj2).longValue() ? Boolean.TRUE : Boolean.FALSE;
                        case 18:
                            return ((Long) obj).longValue() == ((Long) obj2).longValue() ? Boolean.TRUE : Boolean.FALSE;
                        case 19:
                            return ((Long) obj).longValue() != ((Long) obj2).longValue() ? Boolean.TRUE : Boolean.FALSE;
                    }
                case 100:
                case 105:
                    switch (i12) {
                        case 0:
                            return Integer.valueOf(((Short) obj).shortValue() + ((Short) obj2).shortValue());
                        case 1:
                            return Integer.valueOf(((Short) obj).shortValue() - ((Short) obj2).shortValue());
                        case 2:
                            return Integer.valueOf(((Short) obj).shortValue() * ((Short) obj2).shortValue());
                        case 3:
                            return Double.valueOf(((Short) obj).doubleValue() / ((Short) obj2).doubleValue());
                        case 4:
                            return Integer.valueOf(((Short) obj).shortValue() % ((Short) obj2).shortValue());
                        case 5:
                            double dPow3 = Math.pow(((Short) obj).shortValue(), ((Short) obj2).shortValue());
                            return dPow3 > 32767.0d ? Double.valueOf(dPow3) : Short.valueOf((short) dPow3);
                        case 6:
                            return Integer.valueOf(((Short) obj).shortValue() & ((Short) obj2).shortValue());
                        case 7:
                            return Integer.valueOf(((Short) obj).shortValue() | ((Short) obj2).shortValue());
                        case 8:
                            return Integer.valueOf(((Short) obj).shortValue() ^ ((Short) obj2).shortValue());
                        case 9:
                            return Integer.valueOf(((Short) obj).shortValue() >> ((Short) obj2).shortValue());
                        case 10:
                            return Integer.valueOf(((Short) obj).shortValue() << ((Short) obj2).shortValue());
                        case 11:
                            return Integer.valueOf(((Short) obj).shortValue() >>> ((Short) obj2).shortValue());
                        case 14:
                            return ((Short) obj).shortValue() < ((Short) obj2).shortValue() ? Boolean.TRUE : Boolean.FALSE;
                        case 15:
                            return ((Short) obj).shortValue() > ((Short) obj2).shortValue() ? Boolean.TRUE : Boolean.FALSE;
                        case 16:
                            return ((Short) obj).shortValue() <= ((Short) obj2).shortValue() ? Boolean.TRUE : Boolean.FALSE;
                        case 17:
                            return ((Short) obj).shortValue() >= ((Short) obj2).shortValue() ? Boolean.TRUE : Boolean.FALSE;
                        case 18:
                            return ((Short) obj).shortValue() == ((Short) obj2).shortValue() ? Boolean.TRUE : Boolean.FALSE;
                        case 19:
                            return ((Short) obj).shortValue() != ((Short) obj2).shortValue() ? Boolean.TRUE : Boolean.FALSE;
                    }
                case 102:
                case 107:
                    switch (i12) {
                        case 0:
                            return Long.valueOf(((Long) obj).longValue() + ((Long) obj2).longValue());
                        case 1:
                            return Long.valueOf(((Long) obj).longValue() - ((Long) obj2).longValue());
                        case 2:
                            return Long.valueOf(((Long) obj).longValue() * ((Long) obj2).longValue());
                        case 3:
                            return Double.valueOf(((Long) obj).doubleValue() / ((Long) obj2).doubleValue());
                        case 4:
                            return Long.valueOf(((Long) obj).longValue() % ((Long) obj2).longValue());
                        case 5:
                            double dPow4 = Math.pow(((Long) obj).longValue(), ((Long) obj2).longValue());
                            if (dPow4 > 9.223372036854776E18d) {
                            }
                        case 6:
                            if (obj2 instanceof Integer) {
                            }
                        case 7:
                            if (obj2 instanceof Integer) {
                            }
                        case 8:
                            if (obj2 instanceof Integer) {
                            }
                        case 9:
                            if (obj2 instanceof Integer) {
                            }
                        case 10:
                            if (obj2 instanceof Integer) {
                            }
                        case 11:
                            if (obj2 instanceof Integer) {
                            }
                        case 12:
                            throw new UnsupportedOperationException("unsigned left-shift not supported");
                        case 14:
                            if (((Long) obj).longValue() < ((Long) obj2).longValue()) {
                            }
                        case 15:
                            if (((Long) obj).longValue() > ((Long) obj2).longValue()) {
                            }
                        case 16:
                            if (((Long) obj).longValue() <= ((Long) obj2).longValue()) {
                            }
                        case 17:
                            if (((Long) obj).longValue() >= ((Long) obj2).longValue()) {
                            }
                        case 18:
                            if (((Long) obj).longValue() == ((Long) obj2).longValue()) {
                            }
                        case 19:
                            if (((Long) obj).longValue() != ((Long) obj2).longValue()) {
                            }
                    }
                case 103:
                case 109:
                    switch (i12) {
                        case 0:
                            return Double.valueOf(((Double) obj).doubleValue() + ((Double) obj2).doubleValue());
                        case 1:
                            return Double.valueOf(((Double) obj).doubleValue() - ((Double) obj2).doubleValue());
                        case 2:
                            return Double.valueOf(((Double) obj).doubleValue() * ((Double) obj2).doubleValue());
                        case 3:
                            return Double.valueOf(((Double) obj).doubleValue() / ((Double) obj2).doubleValue());
                        case 4:
                            return Double.valueOf(((Double) obj).doubleValue() % ((Double) obj2).doubleValue());
                        case 5:
                            return Double.valueOf(Math.pow(((Double) obj).doubleValue(), ((Double) obj2).doubleValue()));
                        case 6:
                        case 7:
                        case 8:
                        case 9:
                        case 10:
                        case 11:
                            throw new RuntimeException("bitwise operation on a non-fixed-point number.");
                        case 14:
                            return ((Double) obj).doubleValue() < ((Double) obj2).doubleValue() ? Boolean.TRUE : Boolean.FALSE;
                        case 15:
                            return ((Double) obj).doubleValue() > ((Double) obj2).doubleValue() ? Boolean.TRUE : Boolean.FALSE;
                        case 16:
                            return ((Double) obj).doubleValue() <= ((Double) obj2).doubleValue() ? Boolean.TRUE : Boolean.FALSE;
                        case 17:
                            return ((Double) obj).doubleValue() >= ((Double) obj2).doubleValue() ? Boolean.TRUE : Boolean.FALSE;
                        case 18:
                            return ((Double) obj).doubleValue() == ((Double) obj2).doubleValue() ? Boolean.TRUE : Boolean.FALSE;
                        case 19:
                            return ((Double) obj).doubleValue() != ((Double) obj2).doubleValue() ? Boolean.TRUE : Boolean.FALSE;
                    }
                case 104:
                case TaskResultKt.ERROR_LOAD_RESPONSE_STR_EMPTY /* 108 */:
                    switch (i12) {
                        case 0:
                            return Float.valueOf(((Float) obj).floatValue() + ((Float) obj2).floatValue());
                        case 1:
                            return Float.valueOf(((Float) obj).floatValue() - ((Float) obj2).floatValue());
                        case 2:
                            return Float.valueOf(((Float) obj).floatValue() * ((Float) obj2).floatValue());
                        case 3:
                            return Double.valueOf(((Float) obj).doubleValue() / ((Float) obj2).doubleValue());
                        case 4:
                            return Float.valueOf(((Float) obj).floatValue() % ((Float) obj2).floatValue());
                        case 5:
                            double dFloatValue = ((Float) obj).floatValue();
                            MathContext mathContext = f69099a;
                            return m.r0(new InternalNumber(dFloatValue, mathContext).pow(new InternalNumber(((Float) obj2).floatValue()).intValue(), mathContext), -1);
                        case 6:
                        case 7:
                        case 8:
                        case 9:
                        case 10:
                        case 11:
                            throw new RuntimeException("bitwise operation on a non-fixed-point number.");
                        case 12:
                        case 13:
                        default:
                            switch (i12) {
                                case 0:
                                    return ((BigInteger) obj).add((BigInteger) obj2);
                                case 1:
                                    return ((BigInteger) obj).subtract((BigInteger) obj2);
                                case 2:
                                    return ((BigInteger) obj).multiply((BigInteger) obj2);
                                case 3:
                                    return ((BigInteger) obj).divide((BigInteger) obj2);
                                case 4:
                                    return ((BigInteger) obj).remainder((BigInteger) obj2);
                                case 5:
                                    return ((BigInteger) obj).pow(((BigInteger) obj2).intValue());
                                case 6:
                                case 7:
                                case 8:
                                case 9:
                                case 10:
                                case 11:
                                    throw new RuntimeException("bitwise operation on a number greater than 32-bits not possible");
                                case 14:
                                    if (((BigInteger) obj).compareTo((BigInteger) obj2) == -1) {
                                    }
                                case 15:
                                    if (((BigInteger) obj).compareTo((BigInteger) obj2) == 1) {
                                    }
                                case 16:
                                    if (((BigInteger) obj).compareTo((BigInteger) obj2) <= 0) {
                                    }
                                case 17:
                                    if (((BigInteger) obj).compareTo((BigInteger) obj2) >= 0) {
                                    }
                                case 18:
                                    if (((BigInteger) obj).compareTo((BigInteger) obj2) == 0) {
                                    }
                                case 19:
                                    if (((BigInteger) obj).compareTo((BigInteger) obj2) != 0) {
                                    }
                            }
                        case 14:
                            return ((Float) obj).floatValue() < ((Float) obj2).floatValue() ? Boolean.TRUE : Boolean.FALSE;
                        case 15:
                            return ((Float) obj).floatValue() > ((Float) obj2).floatValue() ? Boolean.TRUE : Boolean.FALSE;
                        case 16:
                            return ((Float) obj).floatValue() <= ((Float) obj2).floatValue() ? Boolean.TRUE : Boolean.FALSE;
                        case 17:
                            return ((Float) obj).floatValue() >= ((Float) obj2).floatValue() ? Boolean.TRUE : Boolean.FALSE;
                        case 18:
                            return ((Float) obj).floatValue() == ((Float) obj2).floatValue() ? Boolean.TRUE : Boolean.FALSE;
                        case 19:
                            return ((Float) obj).floatValue() != ((Float) obj2).floatValue() ? Boolean.TRUE : Boolean.FALSE;
                    }
            }
        }
        c.a(obj);
        throw null;
        if (i12 == 0) {
            return String.valueOf(obj) + String.valueOf(obj2);
        }
        if (i12 == 18) {
            return n(obj2, obj);
        }
        if (i12 != 19) {
            return null;
        }
        return o(obj2, obj);
    }

    private static Object i(Number number, int i11, Number number2, boolean z10, int i12) {
        if (i11 == 0) {
            return p(Double.valueOf(number.doubleValue() + number2.doubleValue()), i12);
        }
        if (i11 == 1) {
            return p(Double.valueOf(number.doubleValue() - number2.doubleValue()), i12);
        }
        if (i11 == 2) {
            return p(Double.valueOf(number.doubleValue() * number2.doubleValue()), i12);
        }
        if (i11 == 3) {
            return p(Double.valueOf(number.doubleValue() / number2.doubleValue()), i12);
        }
        if (i11 == 4) {
            return p(Double.valueOf(number.doubleValue() % number2.doubleValue()), i12);
        }
        if (i11 == 5) {
            return p(Double.valueOf(Math.pow(number.doubleValue(), number2.doubleValue())), i12);
        }
        switch (i11) {
            case 14:
                return number.doubleValue() < number2.doubleValue() ? Boolean.TRUE : Boolean.FALSE;
            case 15:
                return number.doubleValue() > number2.doubleValue() ? Boolean.TRUE : Boolean.FALSE;
            case 16:
                return number.doubleValue() <= number2.doubleValue() ? Boolean.TRUE : Boolean.FALSE;
            case 17:
                return number.doubleValue() >= number2.doubleValue() ? Boolean.TRUE : Boolean.FALSE;
            case 18:
                return number.doubleValue() == number2.doubleValue() ? Boolean.TRUE : Boolean.FALSE;
            case 19:
                return number.doubleValue() != number2.doubleValue() ? Boolean.TRUE : Boolean.FALSE;
            default:
                return null;
        }
    }

    private static InternalNumber j(Object obj, int i11) {
        if (obj == null || obj == BlankLiteral.INSTANCE) {
            return new InternalNumber(0, f69099a);
        }
        if (i11 == 1) {
            return new InternalNumber((String) obj, MathContext.DECIMAL64);
        }
        if (i11 != 15) {
            if (i11 == 300) {
                c.a(obj);
                throw null;
            }
            if (i11 != 7) {
                if (i11 != 8) {
                    if (i11 != 9) {
                        switch (i11) {
                            case 100:
                            case 105:
                                return new InternalNumber((int) ((Short) obj).shortValue(), MathContext.DECIMAL32);
                            case 101:
                            case 106:
                                return new InternalNumber(((Integer) obj).intValue(), MathContext.DECIMAL32);
                            case 102:
                            case 107:
                                return new InternalNumber(((Long) obj).longValue(), MathContext.DECIMAL64);
                            case 103:
                            case 109:
                                return new InternalNumber(((Double) obj).doubleValue(), MathContext.DECIMAL64);
                            case 104:
                            case TaskResultKt.ERROR_LOAD_RESPONSE_STR_EMPTY /* 108 */:
                                return new InternalNumber(((Float) obj).floatValue(), MathContext.DECIMAL64);
                            case 110:
                                return new InternalNumber(((BigDecimal) obj).doubleValue());
                            case 111:
                                return new InternalNumber((BigInteger) obj, MathContext.DECIMAL128);
                            case 112:
                                break;
                            case 113:
                                break;
                            default:
                                throw new RuntimeException("cannot convert <" + obj + "> to a numeric type: " + obj.getClass() + " [" + i11 + "]");
                        }
                    }
                    return new InternalNumber(((Byte) obj).intValue());
                }
                return new InternalNumber((int) ((Character) obj).charValue(), MathContext.DECIMAL32);
            }
        }
        return new InternalNumber(((Boolean) obj).booleanValue() ? 1 : 0);
    }

    private static Double k(Object obj, int i11) {
        if (obj == null || obj == BlankLiteral.INSTANCE) {
            return Double.valueOf(0.0d);
        }
        if (i11 == 1) {
            return Double.valueOf(Double.parseDouble((String) obj));
        }
        if (i11 == 15 || i11 == 7) {
            return Double.valueOf(((Boolean) obj).booleanValue() ? 1.0d : 0.0d);
        }
        if (i11 != 8) {
            if (i11 != 9) {
                switch (i11) {
                    case 100:
                    case 105:
                        return Double.valueOf(((Number) obj).doubleValue());
                    case 101:
                    case 106:
                        return Double.valueOf(((Number) obj).doubleValue());
                    case 102:
                    case 107:
                        return Double.valueOf(((Number) obj).doubleValue());
                    case 103:
                    case 109:
                        return (Double) obj;
                    case 104:
                    case TaskResultKt.ERROR_LOAD_RESPONSE_STR_EMPTY /* 108 */:
                        return Double.valueOf(((Number) obj).doubleValue());
                    case 110:
                        return Double.valueOf(((Number) obj).doubleValue());
                    case 111:
                        return Double.valueOf(((Number) obj).doubleValue());
                    case 112:
                        break;
                    case 113:
                        break;
                    default:
                        throw new RuntimeException("cannot convert <" + obj + "> to a numeric type: " + obj.getClass() + " [" + i11 + "]");
                }
            }
            return Double.valueOf(((Byte) obj).doubleValue());
        }
        return Double.valueOf(Double.parseDouble(String.valueOf((Character) obj)));
    }

    private static boolean l(int i11) {
        return i11 == 101 || i11 == 106 || i11 == 102 || i11 == 107;
    }

    private static boolean m(int i11, Object obj, int i12, int i13, Object obj2) {
        return (i11 > 99 && i13 > 99) || (i12 != 0 && ((i11 > 99 || i13 > 99 || i12 < 14 || i12 > 17) && m.g0(obj) && m.g0(obj2)));
    }

    /* JADX WARN: Code duplicated, block: B:17:0x0024  */
    private static Boolean n(Object obj, Object obj2) {
        boolean z10;
        if (obj != null) {
            return obj.equals(obj2) ? Boolean.TRUE : Boolean.FALSE;
        }
        if (obj2 == null) {
            z10 = true;
        } else {
            if ((obj2.equals(obj) ? Boolean.TRUE : Boolean.FALSE).booleanValue()) {
                z10 = true;
            } else {
                z10 = false;
            }
        }
        return Boolean.valueOf(z10);
    }

    private static Boolean o(Object obj, Object obj2) {
        if (obj != null) {
            return !obj.equals(obj2) ? Boolean.TRUE : Boolean.FALSE;
        }
        return (obj2 == null || obj2.equals(obj)) ? Boolean.FALSE : Boolean.TRUE;
    }

    private static Object p(Number number, int i11) {
        if (i11 == 1) {
            return Double.valueOf(number.doubleValue());
        }
        switch (i11) {
            case 100:
            case 105:
                return Short.valueOf(number.shortValue());
            case 101:
            case 106:
                return Integer.valueOf(number.intValue());
            case 102:
            case 107:
                return Long.valueOf(number.longValue());
            case 103:
            case 109:
                return Double.valueOf(number.doubleValue());
            case 104:
            case TaskResultKt.ERROR_LOAD_RESPONSE_STR_EMPTY /* 108 */:
                return Float.valueOf(number.floatValue());
            case 110:
                return new BigDecimal(number.doubleValue());
            case 111:
                return BigInteger.valueOf(number.longValue());
            default:
                throw new RuntimeException("internal error: " + i11);
        }
    }
}
