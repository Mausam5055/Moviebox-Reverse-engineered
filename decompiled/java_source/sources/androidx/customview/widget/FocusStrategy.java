package androidx.customview.widget;

import android.graphics.Rect;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;

/* JADX INFO: loaded from: classes.dex */
abstract class FocusStrategy {

    private static class SequentialComparator<T> implements Comparator<T> {
        private final a mAdapter;
        private final boolean mIsLayoutRtl;
        private final Rect mTemp1 = new Rect();
        private final Rect mTemp2 = new Rect();

        SequentialComparator(boolean z10, a aVar) {
            this.mIsLayoutRtl = z10;
            this.mAdapter = aVar;
        }

        @Override // java.util.Comparator
        public int compare(T t11, T t12) {
            Rect rect = this.mTemp1;
            Rect rect2 = this.mTemp2;
            this.mAdapter.a(t11, rect);
            this.mAdapter.a(t12, rect2);
            int i11 = rect.top;
            int i12 = rect2.top;
            if (i11 < i12) {
                return -1;
            }
            if (i11 > i12) {
                return 1;
            }
            int i13 = rect.left;
            int i14 = rect2.left;
            if (i13 < i14) {
                return this.mIsLayoutRtl ? 1 : -1;
            }
            if (i13 > i14) {
                return this.mIsLayoutRtl ? -1 : 1;
            }
            int i15 = rect.bottom;
            int i16 = rect2.bottom;
            if (i15 < i16) {
                return -1;
            }
            if (i15 > i16) {
                return 1;
            }
            int i17 = rect.right;
            int i18 = rect2.right;
            if (i17 < i18) {
                return this.mIsLayoutRtl ? 1 : -1;
            }
            if (i17 > i18) {
                return this.mIsLayoutRtl ? -1 : 1;
            }
            return 0;
        }
    }

    public interface a {
        void a(Object obj, Rect rect);
    }

    public interface b {
        Object a(Object obj, int i11);

        int b(Object obj);
    }

    private static boolean a(int i11, Rect rect, Rect rect2, Rect rect3) {
        boolean zB = b(i11, rect, rect2);
        if (b(i11, rect, rect3) || !zB) {
            return false;
        }
        return !j(i11, rect, rect3) || i11 == 17 || i11 == 66 || k(i11, rect, rect2) < m(i11, rect, rect3);
    }

    private static boolean b(int i11, Rect rect, Rect rect2) {
        if (i11 != 17) {
            if (i11 != 33) {
                if (i11 != 66) {
                    if (i11 != 130) {
                        throw new IllegalArgumentException("direction must be one of {FOCUS_UP, FOCUS_DOWN, FOCUS_LEFT, FOCUS_RIGHT}.");
                    }
                }
            }
            return rect2.right >= rect.left && rect2.left <= rect.right;
        }
        return rect2.bottom >= rect.top && rect2.top <= rect.bottom;
    }

    public static Object c(Object obj, b bVar, a aVar, Object obj2, Rect rect, int i11) {
        Rect rect2 = new Rect(rect);
        if (i11 == 17) {
            rect2.offset(rect.width() + 1, 0);
        } else if (i11 == 33) {
            rect2.offset(0, rect.height() + 1);
        } else if (i11 == 66) {
            rect2.offset(-(rect.width() + 1), 0);
        } else {
            if (i11 != 130) {
                throw new IllegalArgumentException("direction must be one of {FOCUS_UP, FOCUS_DOWN, FOCUS_LEFT, FOCUS_RIGHT}.");
            }
            rect2.offset(0, -(rect.height() + 1));
        }
        int iB = bVar.b(obj);
        Rect rect3 = new Rect();
        Object obj3 = null;
        for (int i12 = 0; i12 < iB; i12++) {
            Object objA = bVar.a(obj, i12);
            if (objA != obj2) {
                aVar.a(objA, rect3);
                if (h(i11, rect, rect3, rect2)) {
                    rect2.set(rect3);
                    obj3 = objA;
                }
            }
        }
        return obj3;
    }

    public static Object d(Object obj, b bVar, a aVar, Object obj2, int i11, boolean z10, boolean z11) {
        int iB = bVar.b(obj);
        ArrayList arrayList = new ArrayList(iB);
        for (int i12 = 0; i12 < iB; i12++) {
            arrayList.add(bVar.a(obj, i12));
        }
        Collections.sort(arrayList, new SequentialComparator(z10, aVar));
        if (i11 == 1) {
            return f(obj2, arrayList, z11);
        }
        if (i11 == 2) {
            return e(obj2, arrayList, z11);
        }
        throw new IllegalArgumentException("direction must be one of {FOCUS_FORWARD, FOCUS_BACKWARD}.");
    }

    private static Object e(Object obj, ArrayList arrayList, boolean z10) {
        int size = arrayList.size();
        int iLastIndexOf = (obj == null ? -1 : arrayList.lastIndexOf(obj)) + 1;
        if (iLastIndexOf < size) {
            return arrayList.get(iLastIndexOf);
        }
        if (!z10 || size <= 0) {
            return null;
        }
        return arrayList.get(0);
    }

    private static Object f(Object obj, ArrayList arrayList, boolean z10) {
        int size = arrayList.size();
        int iIndexOf = (obj == null ? size : arrayList.indexOf(obj)) - 1;
        if (iIndexOf >= 0) {
            return arrayList.get(iIndexOf);
        }
        if (!z10 || size <= 0) {
            return null;
        }
        return arrayList.get(size - 1);
    }

    private static int g(int i11, int i12) {
        return (i11 * 13 * i11) + (i12 * i12);
    }

    private static boolean h(int i11, Rect rect, Rect rect2, Rect rect3) {
        if (!i(rect, rect2, i11)) {
            return false;
        }
        if (i(rect, rect3, i11) && !a(i11, rect, rect2, rect3)) {
            return !a(i11, rect, rect3, rect2) && g(k(i11, rect, rect2), o(i11, rect, rect2)) < g(k(i11, rect, rect3), o(i11, rect, rect3));
        }
        return true;
    }

    private static boolean i(Rect rect, Rect rect2, int i11) {
        if (i11 == 17) {
            int i12 = rect.right;
            int i13 = rect2.right;
            return (i12 > i13 || rect.left >= i13) && rect.left > rect2.left;
        }
        if (i11 == 33) {
            int i14 = rect.bottom;
            int i15 = rect2.bottom;
            return (i14 > i15 || rect.top >= i15) && rect.top > rect2.top;
        }
        if (i11 == 66) {
            int i16 = rect.left;
            int i17 = rect2.left;
            return (i16 < i17 || rect.right <= i17) && rect.right < rect2.right;
        }
        if (i11 != 130) {
            throw new IllegalArgumentException("direction must be one of {FOCUS_UP, FOCUS_DOWN, FOCUS_LEFT, FOCUS_RIGHT}.");
        }
        int i18 = rect.top;
        int i19 = rect2.top;
        return (i18 < i19 || rect.bottom <= i19) && rect.bottom < rect2.bottom;
    }

    private static boolean j(int i11, Rect rect, Rect rect2) {
        if (i11 == 17) {
            return rect.left >= rect2.right;
        }
        if (i11 == 33) {
            return rect.top >= rect2.bottom;
        }
        if (i11 == 66) {
            return rect.right <= rect2.left;
        }
        if (i11 == 130) {
            return rect.bottom <= rect2.top;
        }
        throw new IllegalArgumentException("direction must be one of {FOCUS_UP, FOCUS_DOWN, FOCUS_LEFT, FOCUS_RIGHT}.");
    }

    private static int k(int i11, Rect rect, Rect rect2) {
        return Math.max(0, l(i11, rect, rect2));
    }

    private static int l(int i11, Rect rect, Rect rect2) {
        int i12;
        int i13;
        if (i11 == 17) {
            i12 = rect.left;
            i13 = rect2.right;
        } else if (i11 == 33) {
            i12 = rect.top;
            i13 = rect2.bottom;
        } else if (i11 == 66) {
            i12 = rect2.left;
            i13 = rect.right;
        } else {
            if (i11 != 130) {
                throw new IllegalArgumentException("direction must be one of {FOCUS_UP, FOCUS_DOWN, FOCUS_LEFT, FOCUS_RIGHT}.");
            }
            i12 = rect2.top;
            i13 = rect.bottom;
        }
        return i12 - i13;
    }

    private static int m(int i11, Rect rect, Rect rect2) {
        return Math.max(1, n(i11, rect, rect2));
    }

    private static int n(int i11, Rect rect, Rect rect2) {
        int i12;
        int i13;
        if (i11 == 17) {
            i12 = rect.left;
            i13 = rect2.left;
        } else if (i11 == 33) {
            i12 = rect.top;
            i13 = rect2.top;
        } else if (i11 == 66) {
            i12 = rect2.right;
            i13 = rect.right;
        } else {
            if (i11 != 130) {
                throw new IllegalArgumentException("direction must be one of {FOCUS_UP, FOCUS_DOWN, FOCUS_LEFT, FOCUS_RIGHT}.");
            }
            i12 = rect2.bottom;
            i13 = rect.bottom;
        }
        return i12 - i13;
    }

    private static int o(int i11, Rect rect, Rect rect2) {
        if (i11 != 17) {
            if (i11 != 33) {
                if (i11 != 66) {
                    if (i11 != 130) {
                        throw new IllegalArgumentException("direction must be one of {FOCUS_UP, FOCUS_DOWN, FOCUS_LEFT, FOCUS_RIGHT}.");
                    }
                }
            }
            return Math.abs((rect.left + (rect.width() / 2)) - (rect2.left + (rect2.width() / 2)));
        }
        return Math.abs((rect.top + (rect.height() / 2)) - (rect2.top + (rect2.height() / 2)));
    }
}
