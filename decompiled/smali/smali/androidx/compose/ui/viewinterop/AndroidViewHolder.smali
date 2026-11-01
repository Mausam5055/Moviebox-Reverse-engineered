.class public Landroidx/compose/ui/viewinterop/AndroidViewHolder;
.super Landroid/view/ViewGroup;

# interfaces
.implements Landroidx/core/view/NestedScrollingParent3;
.implements Landroidx/compose/runtime/h;
.implements Landroidx/compose/ui/node/z0;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/compose/ui/viewinterop/AndroidViewHolder$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u00ce\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\r\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\t\n\u0002\u0010\u000b\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0010\u0015\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\n\n\u0002\u0018\u0002\n\u0002\u0008\u001b\n\u0002\u0010\u0007\n\u0002\u0008\u000e\n\u0002\u0018\u0002\n\u0002\u0008\u0014\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\n\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0013\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0008\u0010\u0018\u0000 \u00cf\u00012\u00020\u00012\u00020\u00022\u00020\u00032\u00020\u0004:\u0001kB9\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\u0008\u0010\u0008\u001a\u0004\u0018\u00010\u0007\u0012\u0006\u0010\n\u001a\u00020\t\u0012\u0006\u0010\u000c\u001a\u00020\u000b\u0012\u0006\u0010\u000e\u001a\u00020\r\u0012\u0006\u0010\u0010\u001a\u00020\u000f\u00a2\u0006\u0004\u0008\u0011\u0010\u0012J\'\u0010\u0016\u001a\u00020\t2\u0006\u0010\u0013\u001a\u00020\t2\u0006\u0010\u0014\u001a\u00020\t2\u0006\u0010\u0015\u001a\u00020\tH\u0002\u00a2\u0006\u0004\u0008\u0016\u0010\u0017J\u0015\u0010\u0019\u001a\n\u0018\u00010\rj\u0004\u0018\u0001`\u0018\u00a2\u0006\u0004\u0008\u0019\u0010\u001aJ\u000f\u0010\u001c\u001a\u00020\u001bH\u0016\u00a2\u0006\u0004\u0008\u001c\u0010\u001dJ\u000f\u0010\u001f\u001a\u00020\u001eH\u0016\u00a2\u0006\u0004\u0008\u001f\u0010 J\u000f\u0010!\u001a\u00020\u001eH\u0016\u00a2\u0006\u0004\u0008!\u0010 J\u000f\u0010\"\u001a\u00020\u001eH\u0016\u00a2\u0006\u0004\u0008\"\u0010 J\u001f\u0010%\u001a\u00020\u001e2\u0006\u0010#\u001a\u00020\t2\u0006\u0010$\u001a\u00020\tH\u0014\u00a2\u0006\u0004\u0008%\u0010&J\r\u0010\'\u001a\u00020\u001e\u00a2\u0006\u0004\u0008\'\u0010 J7\u0010.\u001a\u00020\u001e2\u0006\u0010)\u001a\u00020(2\u0006\u0010*\u001a\u00020\t2\u0006\u0010+\u001a\u00020\t2\u0006\u0010,\u001a\u00020\t2\u0006\u0010-\u001a\u00020\tH\u0014\u00a2\u0006\u0004\u0008.\u0010/J\u0011\u00101\u001a\u0004\u0018\u000100H\u0016\u00a2\u0006\u0004\u00081\u00102J\u0017\u00104\u001a\u00020\u001e2\u0006\u00103\u001a\u00020(H\u0016\u00a2\u0006\u0004\u00084\u00105J\u000f\u00106\u001a\u00020\u001eH\u0014\u00a2\u0006\u0004\u00086\u0010 J\u000f\u00107\u001a\u00020\u001eH\u0014\u00a2\u0006\u0004\u00087\u0010 J%\u0010=\u001a\u0004\u0018\u00010<2\u0008\u00109\u001a\u0004\u0018\u0001082\u0008\u0010;\u001a\u0004\u0018\u00010:H\u0016\u00a2\u0006\u0004\u0008=\u0010>J\u001f\u0010A\u001a\u00020\u001e2\u0006\u0010?\u001a\u00020\r2\u0006\u0010@\u001a\u00020\rH\u0016\u00a2\u0006\u0004\u0008A\u0010BJ\r\u0010C\u001a\u00020\u001e\u00a2\u0006\u0004\u0008C\u0010 J\u0017\u0010E\u001a\u00020\u001e2\u0006\u0010D\u001a\u00020\tH\u0014\u00a2\u0006\u0004\u0008E\u0010FJ\u0019\u0010I\u001a\u00020(2\u0008\u0010H\u001a\u0004\u0018\u00010GH\u0016\u00a2\u0006\u0004\u0008I\u0010JJ\u000f\u0010K\u001a\u00020(H\u0016\u00a2\u0006\u0004\u0008K\u0010LJ/\u0010O\u001a\u00020(2\u0006\u0010?\u001a\u00020\r2\u0006\u0010@\u001a\u00020\r2\u0006\u0010M\u001a\u00020\t2\u0006\u0010N\u001a\u00020\tH\u0016\u00a2\u0006\u0004\u0008O\u0010PJ\u000f\u0010Q\u001a\u00020\tH\u0016\u00a2\u0006\u0004\u0008Q\u0010RJ/\u0010S\u001a\u00020\u001e2\u0006\u0010?\u001a\u00020\r2\u0006\u0010@\u001a\u00020\r2\u0006\u0010M\u001a\u00020\t2\u0006\u0010N\u001a\u00020\tH\u0016\u00a2\u0006\u0004\u0008S\u0010TJ\u001f\u0010U\u001a\u00020\u001e2\u0006\u0010@\u001a\u00020\r2\u0006\u0010N\u001a\u00020\tH\u0016\u00a2\u0006\u0004\u0008U\u0010VJG\u0010\\\u001a\u00020\u001e2\u0006\u0010@\u001a\u00020\r2\u0006\u0010W\u001a\u00020\t2\u0006\u0010X\u001a\u00020\t2\u0006\u0010Y\u001a\u00020\t2\u0006\u0010Z\u001a\u00020\t2\u0006\u0010N\u001a\u00020\t2\u0006\u0010[\u001a\u000208H\u0016\u00a2\u0006\u0004\u0008\\\u0010]J?\u0010\\\u001a\u00020\u001e2\u0006\u0010@\u001a\u00020\r2\u0006\u0010W\u001a\u00020\t2\u0006\u0010X\u001a\u00020\t2\u0006\u0010Y\u001a\u00020\t2\u0006\u0010Z\u001a\u00020\t2\u0006\u0010N\u001a\u00020\tH\u0016\u00a2\u0006\u0004\u0008\\\u0010^J7\u0010a\u001a\u00020\u001e2\u0006\u0010@\u001a\u00020\r2\u0006\u0010_\u001a\u00020\t2\u0006\u0010`\u001a\u00020\t2\u0006\u0010[\u001a\u0002082\u0006\u0010N\u001a\u00020\tH\u0016\u00a2\u0006\u0004\u0008a\u0010bJ/\u0010f\u001a\u00020(2\u0006\u0010@\u001a\u00020\r2\u0006\u0010d\u001a\u00020c2\u0006\u0010e\u001a\u00020c2\u0006\u0010[\u001a\u00020(H\u0016\u00a2\u0006\u0004\u0008f\u0010gJ\'\u0010h\u001a\u00020(2\u0006\u0010@\u001a\u00020\r2\u0006\u0010d\u001a\u00020c2\u0006\u0010e\u001a\u00020cH\u0016\u00a2\u0006\u0004\u0008h\u0010iJ\u000f\u0010j\u001a\u00020(H\u0016\u00a2\u0006\u0004\u0008j\u0010LR\u0014\u0010\n\u001a\u00020\t8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008k\u0010lR\u0014\u0010\u000c\u001a\u00020\u000b8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008-\u0010mR\u0017\u0010\u000e\u001a\u00020\r8\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0016\u0010n\u001a\u0004\u0008o\u0010\u001aR\u0014\u0010\u0010\u001a\u00020\u000f8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008p\u0010qR6\u0010z\u001a\u0008\u0012\u0004\u0012\u00020\u001e0r2\u000c\u0010s\u001a\u0008\u0012\u0004\u0012\u00020\u001e0r8\u0006@DX\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008t\u0010u\u001a\u0004\u0008v\u0010w\"\u0004\u0008x\u0010yR\u0016\u0010}\u001a\u00020(8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008{\u0010|R9\u0010\u0082\u0001\u001a\u0008\u0012\u0004\u0012\u00020\u001e0r2\u000c\u0010~\u001a\u0008\u0012\u0004\u0012\u00020\u001e0r8\u0006@DX\u0086\u000e\u00a2\u0006\u0014\n\u0004\u0008\u007f\u0010u\u001a\u0005\u0008\u0080\u0001\u0010w\"\u0005\u0008\u0081\u0001\u0010yR:\u0010\u0086\u0001\u001a\u0008\u0012\u0004\u0012\u00020\u001e0r2\u000c\u0010~\u001a\u0008\u0012\u0004\u0012\u00020\u001e0r8\u0006@DX\u0086\u000e\u00a2\u0006\u0015\n\u0005\u0008\u0083\u0001\u0010u\u001a\u0005\u0008\u0084\u0001\u0010w\"\u0005\u0008\u0085\u0001\u0010yR3\u0010\u008e\u0001\u001a\u00030\u0087\u00012\u0007\u0010s\u001a\u00030\u0087\u00018\u0006@FX\u0086\u000e\u00a2\u0006\u0018\n\u0006\u0008\u0088\u0001\u0010\u0089\u0001\u001a\u0006\u0008\u008a\u0001\u0010\u008b\u0001\"\u0006\u0008\u008c\u0001\u0010\u008d\u0001R9\u0010\u0096\u0001\u001a\u0012\u0012\u0005\u0012\u00030\u0087\u0001\u0012\u0004\u0012\u00020\u001e\u0018\u00010\u008f\u00018\u0000@\u0000X\u0080\u000e\u00a2\u0006\u0018\n\u0006\u0008\u0090\u0001\u0010\u0091\u0001\u001a\u0006\u0008\u0092\u0001\u0010\u0093\u0001\"\u0006\u0008\u0094\u0001\u0010\u0095\u0001R3\u0010\u009e\u0001\u001a\u00030\u0097\u00012\u0007\u0010s\u001a\u00030\u0097\u00018\u0006@FX\u0086\u000e\u00a2\u0006\u0018\n\u0006\u0008\u0098\u0001\u0010\u0099\u0001\u001a\u0006\u0008\u009a\u0001\u0010\u009b\u0001\"\u0006\u0008\u009c\u0001\u0010\u009d\u0001R8\u0010\u00a1\u0001\u001a\u0012\u0012\u0005\u0012\u00030\u0097\u0001\u0012\u0004\u0012\u00020\u001e\u0018\u00010\u008f\u00018\u0000@\u0000X\u0080\u000e\u00a2\u0006\u0017\n\u0005\u0008*\u0010\u0091\u0001\u001a\u0006\u0008\u009f\u0001\u0010\u0093\u0001\"\u0006\u0008\u00a0\u0001\u0010\u0095\u0001R7\u0010\u00a9\u0001\u001a\u0005\u0018\u00010\u00a2\u00012\t\u0010s\u001a\u0005\u0018\u00010\u00a2\u00018\u0006@FX\u0086\u000e\u00a2\u0006\u0018\n\u0006\u0008\u00a3\u0001\u0010\u00a4\u0001\u001a\u0006\u0008\u00a5\u0001\u0010\u00a6\u0001\"\u0006\u0008\u00a7\u0001\u0010\u00a8\u0001R7\u0010\u00b1\u0001\u001a\u0005\u0018\u00010\u00aa\u00012\t\u0010s\u001a\u0005\u0018\u00010\u00aa\u00018\u0006@FX\u0086\u000e\u00a2\u0006\u0018\n\u0006\u0008\u00ab\u0001\u0010\u00ac\u0001\u001a\u0006\u0008\u00ad\u0001\u0010\u00ae\u0001\"\u0006\u0008\u00af\u0001\u0010\u00b0\u0001R\u001c\u0010\u00b3\u0001\u001a\u0008\u0012\u0004\u0012\u00020\u001e0r8\u0002X\u0082\u0004\u00a2\u0006\u0007\n\u0005\u0008\u00b2\u0001\u0010uR\u001c\u0010\u00b5\u0001\u001a\u0008\u0012\u0004\u0012\u00020\u001e0r8\u0002X\u0082\u0004\u00a2\u0006\u0007\n\u0005\u0008\u00b4\u0001\u0010uR8\u0010\u00b9\u0001\u001a\u0011\u0012\u0004\u0012\u00020(\u0012\u0004\u0012\u00020\u001e\u0018\u00010\u008f\u00018\u0000@\u0000X\u0080\u000e\u00a2\u0006\u0018\n\u0006\u0008\u00b6\u0001\u0010\u0091\u0001\u001a\u0006\u0008\u00b7\u0001\u0010\u0093\u0001\"\u0006\u0008\u00b8\u0001\u0010\u0095\u0001R\u0015\u00109\u001a\u0002088\u0002X\u0082\u0004\u00a2\u0006\u0007\n\u0005\u0008,\u0010\u00ba\u0001R\u0018\u0010\u00bc\u0001\u001a\u00020\t8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0007\n\u0005\u0008\u00bb\u0001\u0010lR\u0017\u0010\u00bd\u0001\u001a\u00020\t8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008+\u0010lR\u0018\u0010\u00c1\u0001\u001a\u00030\u00be\u00018\u0002X\u0082\u0004\u00a2\u0006\u0008\n\u0006\u0008\u00bf\u0001\u0010\u00c0\u0001R\u0018\u0010\u00c3\u0001\u001a\u00020(8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0007\n\u0005\u0008\u00c2\u0001\u0010|R\u001d\u0010\u00c9\u0001\u001a\u00030\u00c4\u00018\u0006\u00a2\u0006\u0010\n\u0006\u0008\u00c5\u0001\u0010\u00c6\u0001\u001a\u0006\u0008\u00c7\u0001\u0010\u00c8\u0001R\u0018\u0010\u00cd\u0001\u001a\u00030\u00ca\u00018BX\u0082\u0004\u00a2\u0006\u0008\u001a\u0006\u0008\u00cb\u0001\u0010\u00cc\u0001R\u0016\u0010\u00ce\u0001\u001a\u00020(8VX\u0096\u0004\u00a2\u0006\u0007\u001a\u0005\u0008\u00ce\u0001\u0010L\u00a8\u0006\u00d0\u0001"
    }
    d2 = {
        "Landroidx/compose/ui/viewinterop/AndroidViewHolder;",
        "Landroid/view/ViewGroup;",
        "Landroidx/core/view/NestedScrollingParent3;",
        "Landroidx/compose/runtime/h;",
        "Landroidx/compose/ui/node/z0;",
        "Landroid/content/Context;",
        "context",
        "Landroidx/compose/runtime/m;",
        "parentContext",
        "",
        "compositeKeyHash",
        "Landroidx/compose/ui/input/nestedscroll/NestedScrollDispatcher;",
        "dispatcher",
        "Landroid/view/View;",
        "view",
        "Landroidx/compose/ui/node/y0;",
        "owner",
        "<init>",
        "(Landroid/content/Context;Landroidx/compose/runtime/m;ILandroidx/compose/ui/input/nestedscroll/NestedScrollDispatcher;Landroid/view/View;Landroidx/compose/ui/node/y0;)V",
        "min",
        "max",
        "preferred",
        "c",
        "(III)I",
        "Landroidx/compose/ui/viewinterop/InteropView;",
        "getInteropView",
        "()Landroid/view/View;",
        "",
        "getAccessibilityClassName",
        "()Ljava/lang/CharSequence;",
        "",
        "onReuse",
        "()V",
        "onDeactivate",
        "onRelease",
        "widthMeasureSpec",
        "heightMeasureSpec",
        "onMeasure",
        "(II)V",
        "remeasure",
        "",
        "changed",
        "l",
        "t",
        "r",
        "b",
        "onLayout",
        "(ZIIII)V",
        "Landroid/view/ViewGroup$LayoutParams;",
        "getLayoutParams",
        "()Landroid/view/ViewGroup$LayoutParams;",
        "disallowIntercept",
        "requestDisallowInterceptTouchEvent",
        "(Z)V",
        "onAttachedToWindow",
        "onDetachedFromWindow",
        "",
        "location",
        "Landroid/graphics/Rect;",
        "dirty",
        "Landroid/view/ViewParent;",
        "invalidateChildInParent",
        "([ILandroid/graphics/Rect;)Landroid/view/ViewParent;",
        "child",
        "target",
        "onDescendantInvalidated",
        "(Landroid/view/View;Landroid/view/View;)V",
        "invalidateOrDefer",
        "visibility",
        "onWindowVisibilityChanged",
        "(I)V",
        "Landroid/graphics/Region;",
        "region",
        "gatherTransparentRegion",
        "(Landroid/graphics/Region;)Z",
        "shouldDelayChildPressedState",
        "()Z",
        "axes",
        "type",
        "onStartNestedScroll",
        "(Landroid/view/View;Landroid/view/View;II)Z",
        "getNestedScrollAxes",
        "()I",
        "onNestedScrollAccepted",
        "(Landroid/view/View;Landroid/view/View;II)V",
        "onStopNestedScroll",
        "(Landroid/view/View;I)V",
        "dxConsumed",
        "dyConsumed",
        "dxUnconsumed",
        "dyUnconsumed",
        "consumed",
        "onNestedScroll",
        "(Landroid/view/View;IIIII[I)V",
        "(Landroid/view/View;IIIII)V",
        "dx",
        "dy",
        "onNestedPreScroll",
        "(Landroid/view/View;II[II)V",
        "",
        "velocityX",
        "velocityY",
        "onNestedFling",
        "(Landroid/view/View;FFZ)Z",
        "onNestedPreFling",
        "(Landroid/view/View;FF)Z",
        "isNestedScrollingEnabled",
        "a",
        "I",
        "Landroidx/compose/ui/input/nestedscroll/NestedScrollDispatcher;",
        "Landroid/view/View;",
        "getView",
        "d",
        "Landroidx/compose/ui/node/y0;",
        "Lkotlin/Function0;",
        "value",
        "e",
        "Lkotlin/jvm/functions/Function0;",
        "getUpdate",
        "()Lkotlin/jvm/functions/Function0;",
        "setUpdate",
        "(Lkotlin/jvm/functions/Function0;)V",
        "update",
        "f",
        "Z",
        "hasUpdateBlock",
        "<set-?>",
        "g",
        "getReset",
        "setReset",
        "reset",
        "h",
        "getRelease",
        "setRelease",
        "release",
        "Landroidx/compose/ui/f;",
        "i",
        "Landroidx/compose/ui/f;",
        "getModifier",
        "()Landroidx/compose/ui/f;",
        "setModifier",
        "(Landroidx/compose/ui/f;)V",
        "modifier",
        "Lkotlin/Function1;",
        "j",
        "Lkotlin/jvm/functions/Function1;",
        "getOnModifierChanged$ui_release",
        "()Lkotlin/jvm/functions/Function1;",
        "setOnModifierChanged$ui_release",
        "(Lkotlin/jvm/functions/Function1;)V",
        "onModifierChanged",
        "Lo0/e;",
        "k",
        "Lo0/e;",
        "getDensity",
        "()Lo0/e;",
        "setDensity",
        "(Lo0/e;)V",
        "density",
        "getOnDensityChanged$ui_release",
        "setOnDensityChanged$ui_release",
        "onDensityChanged",
        "Landroidx/lifecycle/u;",
        "m",
        "Landroidx/lifecycle/u;",
        "getLifecycleOwner",
        "()Landroidx/lifecycle/u;",
        "setLifecycleOwner",
        "(Landroidx/lifecycle/u;)V",
        "lifecycleOwner",
        "Landroidx/savedstate/e;",
        "n",
        "Landroidx/savedstate/e;",
        "getSavedStateRegistryOwner",
        "()Landroidx/savedstate/e;",
        "setSavedStateRegistryOwner",
        "(Landroidx/savedstate/e;)V",
        "savedStateRegistryOwner",
        "o",
        "runUpdate",
        "p",
        "runInvalidate",
        "q",
        "getOnRequestDisallowInterceptTouchEvent$ui_release",
        "setOnRequestDisallowInterceptTouchEvent$ui_release",
        "onRequestDisallowInterceptTouchEvent",
        "[I",
        "s",
        "lastWidthMeasureSpec",
        "lastHeightMeasureSpec",
        "Landroidx/core/view/NestedScrollingParentHelper;",
        "u",
        "Landroidx/core/view/NestedScrollingParentHelper;",
        "nestedScrollingParentHelper",
        "v",
        "isDrawing",
        "Landroidx/compose/ui/node/LayoutNode;",
        "w",
        "Landroidx/compose/ui/node/LayoutNode;",
        "getLayoutNode",
        "()Landroidx/compose/ui/node/LayoutNode;",
        "layoutNode",
        "Landroidx/compose/ui/node/OwnerSnapshotObserver;",
        "getSnapshotObserver",
        "()Landroidx/compose/ui/node/OwnerSnapshotObserver;",
        "snapshotObserver",
        "isValidOwnerScope",
        "Companion",
        "ui_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
.end annotation


# static fields
.field public static final $stable:I

.field public static final Companion:Landroidx/compose/ui/viewinterop/AndroidViewHolder$a;

.field private static final x:Lkotlin/jvm/functions/Function1;


# instance fields
.field private final a:I

.field private final b:Landroidx/compose/ui/input/nestedscroll/NestedScrollDispatcher;

.field private final c:Landroid/view/View;

.field private final d:Landroidx/compose/ui/node/y0;

.field private e:Lkotlin/jvm/functions/Function0;

.field private f:Z

.field private g:Lkotlin/jvm/functions/Function0;

.field private h:Lkotlin/jvm/functions/Function0;

.field private i:Landroidx/compose/ui/f;

.field private j:Lkotlin/jvm/functions/Function1;

.field private k:Lo0/e;

.field private l:Lkotlin/jvm/functions/Function1;

.field private m:Landroidx/lifecycle/u;

.field private n:Landroidx/savedstate/e;

.field private final o:Lkotlin/jvm/functions/Function0;

.field private final p:Lkotlin/jvm/functions/Function0;

.field private q:Lkotlin/jvm/functions/Function1;

.field private final r:[I

.field private s:I

.field private t:I

.field private final u:Landroidx/core/view/NestedScrollingParentHelper;

.field private v:Z

.field private final w:Landroidx/compose/ui/node/LayoutNode;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/compose/ui/viewinterop/AndroidViewHolder$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/compose/ui/viewinterop/AndroidViewHolder$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Landroidx/compose/ui/viewinterop/AndroidViewHolder;->Companion:Landroidx/compose/ui/viewinterop/AndroidViewHolder$a;

    const/16 v0, 0x8

    sput v0, Landroidx/compose/ui/viewinterop/AndroidViewHolder;->$stable:I

    sget-object v0, Landroidx/compose/ui/viewinterop/AndroidViewHolder$Companion$OnCommitAffectingUpdate$1;->INSTANCE:Landroidx/compose/ui/viewinterop/AndroidViewHolder$Companion$OnCommitAffectingUpdate$1;

    sput-object v0, Landroidx/compose/ui/viewinterop/AndroidViewHolder;->x:Lkotlin/jvm/functions/Function1;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroidx/compose/runtime/m;ILandroidx/compose/ui/input/nestedscroll/NestedScrollDispatcher;Landroid/view/View;Landroidx/compose/ui/node/y0;)V
    .locals 2

    invoke-direct {p0, p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    iput p3, p0, Landroidx/compose/ui/viewinterop/AndroidViewHolder;->a:I

    iput-object p4, p0, Landroidx/compose/ui/viewinterop/AndroidViewHolder;->b:Landroidx/compose/ui/input/nestedscroll/NestedScrollDispatcher;

    iput-object p5, p0, Landroidx/compose/ui/viewinterop/AndroidViewHolder;->c:Landroid/view/View;

    iput-object p6, p0, Landroidx/compose/ui/viewinterop/AndroidViewHolder;->d:Landroidx/compose/ui/node/y0;

    if-eqz p2, :cond_0

    invoke-static {p0, p2}, Landroidx/compose/ui/platform/WindowRecomposer_androidKt;->i(Landroid/view/View;Landroidx/compose/runtime/m;)V

    :cond_0
    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/view/View;->setSaveFromParentEnabled(Z)V

    invoke-virtual {p0, p5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    sget-object p2, Landroidx/compose/ui/viewinterop/AndroidViewHolder$update$1;->INSTANCE:Landroidx/compose/ui/viewinterop/AndroidViewHolder$update$1;

    iput-object p2, p0, Landroidx/compose/ui/viewinterop/AndroidViewHolder;->e:Lkotlin/jvm/functions/Function0;

    sget-object p2, Landroidx/compose/ui/viewinterop/AndroidViewHolder$reset$1;->INSTANCE:Landroidx/compose/ui/viewinterop/AndroidViewHolder$reset$1;

    iput-object p2, p0, Landroidx/compose/ui/viewinterop/AndroidViewHolder;->g:Lkotlin/jvm/functions/Function0;

    sget-object p2, Landroidx/compose/ui/viewinterop/AndroidViewHolder$release$1;->INSTANCE:Landroidx/compose/ui/viewinterop/AndroidViewHolder$release$1;

    iput-object p2, p0, Landroidx/compose/ui/viewinterop/AndroidViewHolder;->h:Lkotlin/jvm/functions/Function0;

    sget-object p2, Landroidx/compose/ui/f;->a:Landroidx/compose/ui/f$a;

    iput-object p2, p0, Landroidx/compose/ui/viewinterop/AndroidViewHolder;->i:Landroidx/compose/ui/f;

    const/high16 p5, 0x3f800000    # 1.0f

    const/4 p6, 0x0

    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-static {p5, p6, v0, v1}, Lo0/g;->b(FFILjava/lang/Object;)Lo0/e;

    move-result-object p5

    iput-object p5, p0, Landroidx/compose/ui/viewinterop/AndroidViewHolder;->k:Lo0/e;

    new-instance p5, Landroidx/compose/ui/viewinterop/AndroidViewHolder$runUpdate$1;

    invoke-direct {p5, p0}, Landroidx/compose/ui/viewinterop/AndroidViewHolder$runUpdate$1;-><init>(Landroidx/compose/ui/viewinterop/AndroidViewHolder;)V

    iput-object p5, p0, Landroidx/compose/ui/viewinterop/AndroidViewHolder;->o:Lkotlin/jvm/functions/Function0;

    new-instance p5, Landroidx/compose/ui/viewinterop/AndroidViewHolder$runInvalidate$1;

    invoke-direct {p5, p0}, Landroidx/compose/ui/viewinterop/AndroidViewHolder$runInvalidate$1;-><init>(Landroidx/compose/ui/viewinterop/AndroidViewHolder;)V

    iput-object p5, p0, Landroidx/compose/ui/viewinterop/AndroidViewHolder;->p:Lkotlin/jvm/functions/Function0;

    new-array p5, v0, [I

    iput-object p5, p0, Landroidx/compose/ui/viewinterop/AndroidViewHolder;->r:[I

    const/high16 p5, -0x80000000

    iput p5, p0, Landroidx/compose/ui/viewinterop/AndroidViewHolder;->s:I

    iput p5, p0, Landroidx/compose/ui/viewinterop/AndroidViewHolder;->t:I

    new-instance p5, Landroidx/core/view/NestedScrollingParentHelper;

    invoke-direct {p5, p0}, Landroidx/core/view/NestedScrollingParentHelper;-><init>(Landroid/view/ViewGroup;)V

    iput-object p5, p0, Landroidx/compose/ui/viewinterop/AndroidViewHolder;->u:Landroidx/core/view/NestedScrollingParentHelper;

    new-instance p5, Landroidx/compose/ui/node/LayoutNode;

    const/4 p6, 0x3

    invoke-direct {p5, p1, p1, p6, v1}, Landroidx/compose/ui/node/LayoutNode;-><init>(ZIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual {p5, p0}, Landroidx/compose/ui/node/LayoutNode;->n1(Landroidx/compose/ui/viewinterop/AndroidViewHolder;)V

    invoke-static {}, Landroidx/compose/ui/viewinterop/c;->a()Landroidx/compose/ui/viewinterop/c$a;

    move-result-object p1

    invoke-static {p2, p1, p4}, Landroidx/compose/ui/input/nestedscroll/c;->a(Landroidx/compose/ui/f;Landroidx/compose/ui/input/nestedscroll/b;Landroidx/compose/ui/input/nestedscroll/NestedScrollDispatcher;)Landroidx/compose/ui/f;

    move-result-object p1

    const/4 p2, 0x1

    sget-object p4, Landroidx/compose/ui/viewinterop/AndroidViewHolder$layoutNode$1$coreModifier$1;->INSTANCE:Landroidx/compose/ui/viewinterop/AndroidViewHolder$layoutNode$1$coreModifier$1;

    invoke-static {p1, p2, p4}, Landroidx/compose/ui/semantics/k;->b(Landroidx/compose/ui/f;ZLkotlin/jvm/functions/Function1;)Landroidx/compose/ui/f;

    move-result-object p1

    invoke-static {p1, p0}, Landroidx/compose/ui/input/pointer/PointerInteropFilter_androidKt;->a(Landroidx/compose/ui/f;Landroidx/compose/ui/viewinterop/AndroidViewHolder;)Landroidx/compose/ui/f;

    move-result-object p1

    new-instance p2, Landroidx/compose/ui/viewinterop/AndroidViewHolder$layoutNode$1$coreModifier$2;

    invoke-direct {p2, p0, p5, p0}, Landroidx/compose/ui/viewinterop/AndroidViewHolder$layoutNode$1$coreModifier$2;-><init>(Landroidx/compose/ui/viewinterop/AndroidViewHolder;Landroidx/compose/ui/node/LayoutNode;Landroidx/compose/ui/viewinterop/AndroidViewHolder;)V

    invoke-static {p1, p2}, Landroidx/compose/ui/draw/g;->b(Landroidx/compose/ui/f;Lkotlin/jvm/functions/Function1;)Landroidx/compose/ui/f;

    move-result-object p1

    new-instance p2, Landroidx/compose/ui/viewinterop/AndroidViewHolder$layoutNode$1$coreModifier$3;

    invoke-direct {p2, p0, p5}, Landroidx/compose/ui/viewinterop/AndroidViewHolder$layoutNode$1$coreModifier$3;-><init>(Landroidx/compose/ui/viewinterop/AndroidViewHolder;Landroidx/compose/ui/node/LayoutNode;)V

    invoke-static {p1, p2}, Landroidx/compose/ui/layout/c0;->a(Landroidx/compose/ui/f;Lkotlin/jvm/functions/Function1;)Landroidx/compose/ui/f;

    move-result-object p1

    invoke-virtual {p5, p3}, Landroidx/compose/ui/node/LayoutNode;->c(I)V

    iget-object p2, p0, Landroidx/compose/ui/viewinterop/AndroidViewHolder;->i:Landroidx/compose/ui/f;

    invoke-interface {p2, p1}, Landroidx/compose/ui/f;->e(Landroidx/compose/ui/f;)Landroidx/compose/ui/f;

    move-result-object p2

    invoke-virtual {p5, p2}, Landroidx/compose/ui/node/LayoutNode;->h(Landroidx/compose/ui/f;)V

    new-instance p2, Landroidx/compose/ui/viewinterop/AndroidViewHolder$layoutNode$1$1;

    invoke-direct {p2, p5, p1}, Landroidx/compose/ui/viewinterop/AndroidViewHolder$layoutNode$1$1;-><init>(Landroidx/compose/ui/node/LayoutNode;Landroidx/compose/ui/f;)V

    iput-object p2, p0, Landroidx/compose/ui/viewinterop/AndroidViewHolder;->j:Lkotlin/jvm/functions/Function1;

    iget-object p1, p0, Landroidx/compose/ui/viewinterop/AndroidViewHolder;->k:Lo0/e;

    invoke-virtual {p5, p1}, Landroidx/compose/ui/node/LayoutNode;->b(Lo0/e;)V

    new-instance p1, Landroidx/compose/ui/viewinterop/AndroidViewHolder$layoutNode$1$2;

    invoke-direct {p1, p5}, Landroidx/compose/ui/viewinterop/AndroidViewHolder$layoutNode$1$2;-><init>(Landroidx/compose/ui/node/LayoutNode;)V

    iput-object p1, p0, Landroidx/compose/ui/viewinterop/AndroidViewHolder;->l:Lkotlin/jvm/functions/Function1;

    new-instance p1, Landroidx/compose/ui/viewinterop/AndroidViewHolder$layoutNode$1$3;

    invoke-direct {p1, p0, p5}, Landroidx/compose/ui/viewinterop/AndroidViewHolder$layoutNode$1$3;-><init>(Landroidx/compose/ui/viewinterop/AndroidViewHolder;Landroidx/compose/ui/node/LayoutNode;)V

    invoke-virtual {p5, p1}, Landroidx/compose/ui/node/LayoutNode;->q1(Lkotlin/jvm/functions/Function1;)V

    new-instance p1, Landroidx/compose/ui/viewinterop/AndroidViewHolder$layoutNode$1$4;

    invoke-direct {p1, p0}, Landroidx/compose/ui/viewinterop/AndroidViewHolder$layoutNode$1$4;-><init>(Landroidx/compose/ui/viewinterop/AndroidViewHolder;)V

    invoke-virtual {p5, p1}, Landroidx/compose/ui/node/LayoutNode;->r1(Lkotlin/jvm/functions/Function1;)V

    new-instance p1, Landroidx/compose/ui/viewinterop/AndroidViewHolder$layoutNode$1$5;

    invoke-direct {p1, p0, p5}, Landroidx/compose/ui/viewinterop/AndroidViewHolder$layoutNode$1$5;-><init>(Landroidx/compose/ui/viewinterop/AndroidViewHolder;Landroidx/compose/ui/node/LayoutNode;)V

    invoke-virtual {p5, p1}, Landroidx/compose/ui/node/LayoutNode;->g(Landroidx/compose/ui/layout/t;)V

    iput-object p5, p0, Landroidx/compose/ui/viewinterop/AndroidViewHolder;->w:Landroidx/compose/ui/node/LayoutNode;

    return-void
.end method

.method public static synthetic a(Lkotlin/jvm/functions/Function0;)V
    .locals 0

    invoke-static {p0}, Landroidx/compose/ui/viewinterop/AndroidViewHolder;->b(Lkotlin/jvm/functions/Function0;)V

    return-void
.end method

.method public static final synthetic access$getDispatcher$p(Landroidx/compose/ui/viewinterop/AndroidViewHolder;)Landroidx/compose/ui/input/nestedscroll/NestedScrollDispatcher;
    .locals 0

    iget-object p0, p0, Landroidx/compose/ui/viewinterop/AndroidViewHolder;->b:Landroidx/compose/ui/input/nestedscroll/NestedScrollDispatcher;

    return-object p0
.end method

.method public static final synthetic access$getHasUpdateBlock$p(Landroidx/compose/ui/viewinterop/AndroidViewHolder;)Z
    .locals 0

    iget-boolean p0, p0, Landroidx/compose/ui/viewinterop/AndroidViewHolder;->f:Z

    return p0
.end method

.method public static final synthetic access$getOnCommitAffectingUpdate$cp()Lkotlin/jvm/functions/Function1;
    .locals 1

    sget-object v0, Landroidx/compose/ui/viewinterop/AndroidViewHolder;->x:Lkotlin/jvm/functions/Function1;

    return-object v0
.end method

.method public static final synthetic access$getOwner$p(Landroidx/compose/ui/viewinterop/AndroidViewHolder;)Landroidx/compose/ui/node/y0;
    .locals 0

    iget-object p0, p0, Landroidx/compose/ui/viewinterop/AndroidViewHolder;->d:Landroidx/compose/ui/node/y0;

    return-object p0
.end method

.method public static final synthetic access$getRunUpdate$p(Landroidx/compose/ui/viewinterop/AndroidViewHolder;)Lkotlin/jvm/functions/Function0;
    .locals 0

    iget-object p0, p0, Landroidx/compose/ui/viewinterop/AndroidViewHolder;->o:Lkotlin/jvm/functions/Function0;

    return-object p0
.end method

.method public static final synthetic access$getSnapshotObserver(Landroidx/compose/ui/viewinterop/AndroidViewHolder;)Landroidx/compose/ui/node/OwnerSnapshotObserver;
    .locals 0

    invoke-direct {p0}, Landroidx/compose/ui/viewinterop/AndroidViewHolder;->getSnapshotObserver()Landroidx/compose/ui/node/OwnerSnapshotObserver;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$obtainMeasureSpec(Landroidx/compose/ui/viewinterop/AndroidViewHolder;III)I
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroidx/compose/ui/viewinterop/AndroidViewHolder;->c(III)I

    move-result p0

    return p0
.end method

.method public static final synthetic access$setDrawing$p(Landroidx/compose/ui/viewinterop/AndroidViewHolder;Z)V
    .locals 0

    iput-boolean p1, p0, Landroidx/compose/ui/viewinterop/AndroidViewHolder;->v:Z

    return-void
.end method

.method private static final b(Lkotlin/jvm/functions/Function0;)V
    .locals 0

    invoke-interface {p0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    return-void
.end method

.method private final c(III)I
    .locals 2

    const/high16 v0, 0x40000000    # 2.0f

    if-gez p3, :cond_3

    if-ne p1, p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, -0x2

    const v1, 0x7fffffff

    if-ne p3, p1, :cond_1

    if-eq p2, v1, :cond_1

    const/high16 p1, -0x80000000

    invoke-static {p2, p1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    goto :goto_1

    :cond_1
    const/4 p1, -0x1

    if-ne p3, p1, :cond_2

    if-eq p2, v1, :cond_2

    invoke-static {p2, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    goto :goto_1

    :cond_2
    const/4 p1, 0x0

    invoke-static {p1, p1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    goto :goto_1

    :cond_3
    :goto_0
    invoke-static {p3, p1, p2}, Lkotlin/ranges/RangesKt;->m(III)I

    move-result p1

    invoke-static {p1, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    :goto_1
    return p1
.end method

.method private final getSnapshotObserver()Landroidx/compose/ui/node/OwnerSnapshotObserver;
    .locals 1

    invoke-virtual {p0}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "Expected AndroidViewHolder to be attached when observing reads."

    invoke-static {v0}, Lg0/a;->b(Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Landroidx/compose/ui/viewinterop/AndroidViewHolder;->d:Landroidx/compose/ui/node/y0;

    invoke-interface {v0}, Landroidx/compose/ui/node/y0;->getSnapshotObserver()Landroidx/compose/ui/node/OwnerSnapshotObserver;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public gatherTransparentRegion(Landroid/graphics/Region;)Z
    .locals 9

    const/4 v0, 0x1

    if-nez p1, :cond_0

    return v0

    :cond_0
    iget-object v1, p0, Landroidx/compose/ui/viewinterop/AndroidViewHolder;->r:[I

    invoke-virtual {p0, v1}, Landroid/view/View;->getLocationInWindow([I)V

    iget-object v1, p0, Landroidx/compose/ui/viewinterop/AndroidViewHolder;->r:[I

    const/4 v2, 0x0

    aget v4, v1, v2

    aget v5, v1, v0

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v1

    add-int v6, v4, v1

    iget-object v1, p0, Landroidx/compose/ui/viewinterop/AndroidViewHolder;->r:[I

    aget v1, v1, v0

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v2

    add-int v7, v1, v2

    sget-object v8, Landroid/graphics/Region$Op;->DIFFERENCE:Landroid/graphics/Region$Op;

    move-object v3, p1

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Region;->op(IIIILandroid/graphics/Region$Op;)Z

    return v0
.end method

.method public getAccessibilityClassName()Ljava/lang/CharSequence;
    .locals 1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getDensity()Lo0/e;
    .locals 1

    iget-object v0, p0, Landroidx/compose/ui/viewinterop/AndroidViewHolder;->k:Lo0/e;

    return-object v0
.end method

.method public final getInteropView()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Landroidx/compose/ui/viewinterop/AndroidViewHolder;->c:Landroid/view/View;

    return-object v0
.end method

.method public final getLayoutNode()Landroidx/compose/ui/node/LayoutNode;
    .locals 1

    iget-object v0, p0, Landroidx/compose/ui/viewinterop/AndroidViewHolder;->w:Landroidx/compose/ui/node/LayoutNode;

    return-object v0
.end method

.method public getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 2

    iget-object v0, p0, Landroidx/compose/ui/viewinterop/AndroidViewHolder;->c:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    :cond_0
    return-object v0
.end method

.method public final getLifecycleOwner()Landroidx/lifecycle/u;
    .locals 1

    iget-object v0, p0, Landroidx/compose/ui/viewinterop/AndroidViewHolder;->m:Landroidx/lifecycle/u;

    return-object v0
.end method

.method public final getModifier()Landroidx/compose/ui/f;
    .locals 1

    iget-object v0, p0, Landroidx/compose/ui/viewinterop/AndroidViewHolder;->i:Landroidx/compose/ui/f;

    return-object v0
.end method

.method public getNestedScrollAxes()I
    .locals 1

    iget-object v0, p0, Landroidx/compose/ui/viewinterop/AndroidViewHolder;->u:Landroidx/core/view/NestedScrollingParentHelper;

    invoke-virtual {v0}, Landroidx/core/view/NestedScrollingParentHelper;->getNestedScrollAxes()I

    move-result v0

    return v0
.end method

.method public final getOnDensityChanged$ui_release()Lkotlin/jvm/functions/Function1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function1<",
            "Lo0/e;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroidx/compose/ui/viewinterop/AndroidViewHolder;->l:Lkotlin/jvm/functions/Function1;

    return-object v0
.end method

.method public final getOnModifierChanged$ui_release()Lkotlin/jvm/functions/Function1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function1<",
            "Landroidx/compose/ui/f;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroidx/compose/ui/viewinterop/AndroidViewHolder;->j:Lkotlin/jvm/functions/Function1;

    return-object v0
.end method

.method public final getOnRequestDisallowInterceptTouchEvent$ui_release()Lkotlin/jvm/functions/Function1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function1<",
            "Ljava/lang/Boolean;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroidx/compose/ui/viewinterop/AndroidViewHolder;->q:Lkotlin/jvm/functions/Function1;

    return-object v0
.end method

.method public final getRelease()Lkotlin/jvm/functions/Function0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroidx/compose/ui/viewinterop/AndroidViewHolder;->h:Lkotlin/jvm/functions/Function0;

    return-object v0
.end method

.method public final getReset()Lkotlin/jvm/functions/Function0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroidx/compose/ui/viewinterop/AndroidViewHolder;->g:Lkotlin/jvm/functions/Function0;

    return-object v0
.end method

.method public final getSavedStateRegistryOwner()Landroidx/savedstate/e;
    .locals 1

    iget-object v0, p0, Landroidx/compose/ui/viewinterop/AndroidViewHolder;->n:Landroidx/savedstate/e;

    return-object v0
.end method

.method public final getUpdate()Lkotlin/jvm/functions/Function0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroidx/compose/ui/viewinterop/AndroidViewHolder;->e:Lkotlin/jvm/functions/Function0;

    return-object v0
.end method

.method public final getView()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Landroidx/compose/ui/viewinterop/AndroidViewHolder;->c:Landroid/view/View;

    return-object v0
.end method

.method public invalidateChildInParent([ILandroid/graphics/Rect;)Landroid/view/ViewParent;
    .locals 0

    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->invalidateChildInParent([ILandroid/graphics/Rect;)Landroid/view/ViewParent;

    invoke-virtual {p0}, Landroidx/compose/ui/viewinterop/AndroidViewHolder;->invalidateOrDefer()V

    const/4 p1, 0x0

    return-object p1
.end method

.method public final invalidateOrDefer()V
    .locals 3

    iget-boolean v0, p0, Landroidx/compose/ui/viewinterop/AndroidViewHolder;->v:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/compose/ui/viewinterop/AndroidViewHolder;->c:Landroid/view/View;

    iget-object v1, p0, Landroidx/compose/ui/viewinterop/AndroidViewHolder;->p:Lkotlin/jvm/functions/Function0;

    new-instance v2, Landroidx/compose/ui/viewinterop/a;

    invoke-direct {v2, v1}, Landroidx/compose/ui/viewinterop/a;-><init>(Lkotlin/jvm/functions/Function0;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->postOnAnimation(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroidx/compose/ui/viewinterop/AndroidViewHolder;->w:Landroidx/compose/ui/node/LayoutNode;

    invoke-virtual {v0}, Landroidx/compose/ui/node/LayoutNode;->w0()V

    :goto_0
    return-void
.end method

.method public isNestedScrollingEnabled()Z
    .locals 1

    iget-object v0, p0, Landroidx/compose/ui/viewinterop/AndroidViewHolder;->c:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->isNestedScrollingEnabled()Z

    move-result v0

    return v0
.end method

.method public isValidOwnerScope()Z
    .locals 1

    invoke-virtual {p0}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v0

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 1

    invoke-super {p0}, Landroid/view/ViewGroup;->onAttachedToWindow()V

    iget-object v0, p0, Landroidx/compose/ui/viewinterop/AndroidViewHolder;->o:Lkotlin/jvm/functions/Function0;

    invoke-interface {v0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    return-void
.end method

.method public onDeactivate()V
    .locals 1

    iget-object v0, p0, Landroidx/compose/ui/viewinterop/AndroidViewHolder;->g:Lkotlin/jvm/functions/Function0;

    invoke-interface {v0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->removeAllViewsInLayout()V

    return-void
.end method

.method public onDescendantInvalidated(Landroid/view/View;Landroid/view/View;)V
    .locals 0

    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->onDescendantInvalidated(Landroid/view/View;Landroid/view/View;)V

    invoke-virtual {p0}, Landroidx/compose/ui/viewinterop/AndroidViewHolder;->invalidateOrDefer()V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    invoke-direct {p0}, Landroidx/compose/ui/viewinterop/AndroidViewHolder;->getSnapshotObserver()Landroidx/compose/ui/node/OwnerSnapshotObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroidx/compose/ui/node/OwnerSnapshotObserver;->a(Ljava/lang/Object;)V

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    iget-object p1, p0, Landroidx/compose/ui/viewinterop/AndroidViewHolder;->c:Landroid/view/View;

    sub-int/2addr p4, p2

    sub-int/2addr p5, p3

    const/4 p2, 0x0

    invoke-virtual {p1, p2, p2, p4, p5}, Landroid/view/View;->layout(IIII)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 2

    iget-object v0, p0, Landroidx/compose/ui/viewinterop/AndroidViewHolder;->c:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eq v0, p0, :cond_0

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    invoke-virtual {p0, p1, p2}, Landroid/view/View;->setMeasuredDimension(II)V

    return-void

    :cond_0
    iget-object v0, p0, Landroidx/compose/ui/viewinterop/AndroidViewHolder;->c:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_1

    const/4 p1, 0x0

    invoke-virtual {p0, p1, p1}, Landroid/view/View;->setMeasuredDimension(II)V

    return-void

    :cond_1
    iget-object v0, p0, Landroidx/compose/ui/viewinterop/AndroidViewHolder;->c:Landroid/view/View;

    invoke-virtual {v0, p1, p2}, Landroid/view/View;->measure(II)V

    iget-object v0, p0, Landroidx/compose/ui/viewinterop/AndroidViewHolder;->c:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    iget-object v1, p0, Landroidx/compose/ui/viewinterop/AndroidViewHolder;->c:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Landroid/view/View;->setMeasuredDimension(II)V

    iput p1, p0, Landroidx/compose/ui/viewinterop/AndroidViewHolder;->s:I

    iput p2, p0, Landroidx/compose/ui/viewinterop/AndroidViewHolder;->t:I

    return-void
.end method

.method public onNestedFling(Landroid/view/View;FFZ)Z
    .locals 14

    invoke-virtual {p0}, Landroidx/compose/ui/viewinterop/AndroidViewHolder;->isNestedScrollingEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-static/range {p2 .. p2}, Landroidx/compose/ui/viewinterop/c;->d(F)F

    move-result v0

    invoke-static/range {p3 .. p3}, Landroidx/compose/ui/viewinterop/c;->d(F)F

    move-result v2

    invoke-static {v0, v2}, Lo0/a0;->a(FF)J

    move-result-wide v6

    move-object v0, p0

    iget-object v2, v0, Landroidx/compose/ui/viewinterop/AndroidViewHolder;->b:Landroidx/compose/ui/input/nestedscroll/NestedScrollDispatcher;

    invoke-virtual {v2}, Landroidx/compose/ui/input/nestedscroll/NestedScrollDispatcher;->e()Lkotlinx/coroutines/n0;

    move-result-object v2

    new-instance v11, Landroidx/compose/ui/viewinterop/AndroidViewHolder$onNestedFling$1;

    const/4 v8, 0x0

    move-object v3, v11

    move/from16 v4, p4

    move-object v5, p0

    invoke-direct/range {v3 .. v8}, Landroidx/compose/ui/viewinterop/AndroidViewHolder$onNestedFling$1;-><init>(ZLandroidx/compose/ui/viewinterop/AndroidViewHolder;JLkotlin/coroutines/Continuation;)V

    const/4 v12, 0x3

    const/4 v13, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v8, v2

    invoke-static/range {v8 .. v13}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    return v1
.end method

.method public onNestedPreFling(Landroid/view/View;FF)Z
    .locals 7

    invoke-virtual {p0}, Landroidx/compose/ui/viewinterop/AndroidViewHolder;->isNestedScrollingEnabled()Z

    move-result p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    invoke-static {p2}, Landroidx/compose/ui/viewinterop/c;->d(F)F

    move-result p1

    invoke-static {p3}, Landroidx/compose/ui/viewinterop/c;->d(F)F

    move-result p2

    invoke-static {p1, p2}, Lo0/a0;->a(FF)J

    move-result-wide p1

    iget-object p3, p0, Landroidx/compose/ui/viewinterop/AndroidViewHolder;->b:Landroidx/compose/ui/input/nestedscroll/NestedScrollDispatcher;

    invoke-virtual {p3}, Landroidx/compose/ui/input/nestedscroll/NestedScrollDispatcher;->e()Lkotlinx/coroutines/n0;

    move-result-object v1

    new-instance v4, Landroidx/compose/ui/viewinterop/AndroidViewHolder$onNestedPreFling$1;

    const/4 p3, 0x0

    invoke-direct {v4, p0, p1, p2, p3}, Landroidx/compose/ui/viewinterop/AndroidViewHolder$onNestedPreFling$1;-><init>(Landroidx/compose/ui/viewinterop/AndroidViewHolder;JLkotlin/coroutines/Continuation;)V

    const/4 v5, 0x3

    const/4 v6, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    return v0
.end method

.method public onNestedPreScroll(Landroid/view/View;II[II)V
    .locals 0

    invoke-virtual {p0}, Landroidx/compose/ui/viewinterop/AndroidViewHolder;->isNestedScrollingEnabled()Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object p1, p0, Landroidx/compose/ui/viewinterop/AndroidViewHolder;->b:Landroidx/compose/ui/input/nestedscroll/NestedScrollDispatcher;

    invoke-static {p2}, Landroidx/compose/ui/viewinterop/c;->c(I)F

    move-result p2

    invoke-static {p3}, Landroidx/compose/ui/viewinterop/c;->c(I)F

    move-result p3

    invoke-static {p2, p3}, Ly/h;->a(FF)J

    move-result-wide p2

    invoke-static {p5}, Landroidx/compose/ui/viewinterop/c;->e(I)I

    move-result p5

    invoke-virtual {p1, p2, p3, p5}, Landroidx/compose/ui/input/nestedscroll/NestedScrollDispatcher;->d(JI)J

    move-result-wide p1

    invoke-static {p1, p2}, Ly/g;->m(J)F

    move-result p3

    invoke-static {p3}, Landroidx/compose/ui/platform/h1;->b(F)I

    move-result p3

    const/4 p5, 0x0

    aput p3, p4, p5

    invoke-static {p1, p2}, Ly/g;->n(J)F

    move-result p1

    invoke-static {p1}, Landroidx/compose/ui/platform/h1;->b(F)I

    move-result p1

    const/4 p2, 0x1

    aput p1, p4, p2

    return-void
.end method

.method public onNestedScroll(Landroid/view/View;IIIII)V
    .locals 6

    invoke-virtual {p0}, Landroidx/compose/ui/viewinterop/AndroidViewHolder;->isNestedScrollingEnabled()Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Landroidx/compose/ui/viewinterop/AndroidViewHolder;->b:Landroidx/compose/ui/input/nestedscroll/NestedScrollDispatcher;

    invoke-static {p2}, Landroidx/compose/ui/viewinterop/c;->c(I)F

    move-result p1

    invoke-static {p3}, Landroidx/compose/ui/viewinterop/c;->c(I)F

    move-result p2

    invoke-static {p1, p2}, Ly/h;->a(FF)J

    move-result-wide v1

    invoke-static {p4}, Landroidx/compose/ui/viewinterop/c;->c(I)F

    move-result p1

    invoke-static {p5}, Landroidx/compose/ui/viewinterop/c;->c(I)F

    move-result p2

    invoke-static {p1, p2}, Ly/h;->a(FF)J

    move-result-wide v3

    invoke-static {p6}, Landroidx/compose/ui/viewinterop/c;->e(I)I

    move-result v5

    invoke-virtual/range {v0 .. v5}, Landroidx/compose/ui/input/nestedscroll/NestedScrollDispatcher;->b(JJI)J

    return-void
.end method

.method public onNestedScroll(Landroid/view/View;IIIII[I)V
    .locals 6

    invoke-virtual {p0}, Landroidx/compose/ui/viewinterop/AndroidViewHolder;->isNestedScrollingEnabled()Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Landroidx/compose/ui/viewinterop/AndroidViewHolder;->b:Landroidx/compose/ui/input/nestedscroll/NestedScrollDispatcher;

    invoke-static {p2}, Landroidx/compose/ui/viewinterop/c;->c(I)F

    move-result p1

    invoke-static {p3}, Landroidx/compose/ui/viewinterop/c;->c(I)F

    move-result p2

    invoke-static {p1, p2}, Ly/h;->a(FF)J

    move-result-wide v1

    invoke-static {p4}, Landroidx/compose/ui/viewinterop/c;->c(I)F

    move-result p1

    invoke-static {p5}, Landroidx/compose/ui/viewinterop/c;->c(I)F

    move-result p2

    invoke-static {p1, p2}, Ly/h;->a(FF)J

    move-result-wide v3

    invoke-static {p6}, Landroidx/compose/ui/viewinterop/c;->e(I)I

    move-result v5

    invoke-virtual/range {v0 .. v5}, Landroidx/compose/ui/input/nestedscroll/NestedScrollDispatcher;->b(JJI)J

    move-result-wide p1

    invoke-static {p1, p2}, Ly/g;->m(J)F

    move-result p3

    invoke-static {p3}, Landroidx/compose/ui/platform/h1;->b(F)I

    move-result p3

    const/4 p4, 0x0

    aput p3, p7, p4

    invoke-static {p1, p2}, Ly/g;->n(J)F

    move-result p1

    invoke-static {p1}, Landroidx/compose/ui/platform/h1;->b(F)I

    move-result p1

    const/4 p2, 0x1

    aput p1, p7, p2

    return-void
.end method

.method public onNestedScrollAccepted(Landroid/view/View;Landroid/view/View;II)V
    .locals 1

    iget-object v0, p0, Landroidx/compose/ui/viewinterop/AndroidViewHolder;->u:Landroidx/core/view/NestedScrollingParentHelper;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroidx/core/view/NestedScrollingParentHelper;->onNestedScrollAccepted(Landroid/view/View;Landroid/view/View;II)V

    return-void
.end method

.method public onRelease()V
    .locals 1

    iget-object v0, p0, Landroidx/compose/ui/viewinterop/AndroidViewHolder;->h:Lkotlin/jvm/functions/Function0;

    invoke-interface {v0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    return-void
.end method

.method public onReuse()V
    .locals 1

    iget-object v0, p0, Landroidx/compose/ui/viewinterop/AndroidViewHolder;->c:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eq v0, p0, :cond_0

    iget-object v0, p0, Landroidx/compose/ui/viewinterop/AndroidViewHolder;->c:Landroid/view/View;

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroidx/compose/ui/viewinterop/AndroidViewHolder;->g:Lkotlin/jvm/functions/Function0;

    invoke-interface {v0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    :goto_0
    return-void
.end method

.method public onStartNestedScroll(Landroid/view/View;Landroid/view/View;II)Z
    .locals 0

    and-int/lit8 p1, p3, 0x2

    const/4 p2, 0x1

    if-nez p1, :cond_1

    and-int/lit8 p1, p3, 0x1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :cond_1
    :goto_0
    return p2
.end method

.method public onStopNestedScroll(Landroid/view/View;I)V
    .locals 1

    iget-object v0, p0, Landroidx/compose/ui/viewinterop/AndroidViewHolder;->u:Landroidx/core/view/NestedScrollingParentHelper;

    invoke-virtual {v0, p1, p2}, Landroidx/core/view/NestedScrollingParentHelper;->onStopNestedScroll(Landroid/view/View;I)V

    return-void
.end method

.method protected onWindowVisibilityChanged(I)V
    .locals 0

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onWindowVisibilityChanged(I)V

    return-void
.end method

.method public final remeasure()V
    .locals 3

    iget v0, p0, Landroidx/compose/ui/viewinterop/AndroidViewHolder;->s:I

    const/high16 v1, -0x80000000

    if-eq v0, v1, :cond_1

    iget v2, p0, Landroidx/compose/ui/viewinterop/AndroidViewHolder;->t:I

    if-ne v2, v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v0, v2}, Landroid/view/View;->measure(II)V

    :cond_1
    :goto_0
    return-void
.end method

.method public requestDisallowInterceptTouchEvent(Z)V
    .locals 2

    iget-object v0, p0, Landroidx/compose/ui/viewinterop/AndroidViewHolder;->q:Lkotlin/jvm/functions/Function1;

    if-eqz v0, :cond_0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v0, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->requestDisallowInterceptTouchEvent(Z)V

    return-void
.end method

.method public final setDensity(Lo0/e;)V
    .locals 1

    iget-object v0, p0, Landroidx/compose/ui/viewinterop/AndroidViewHolder;->k:Lo0/e;

    if-eq p1, v0, :cond_0

    iput-object p1, p0, Landroidx/compose/ui/viewinterop/AndroidViewHolder;->k:Lo0/e;

    iget-object v0, p0, Landroidx/compose/ui/viewinterop/AndroidViewHolder;->l:Lkotlin/jvm/functions/Function1;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public final setLifecycleOwner(Landroidx/lifecycle/u;)V
    .locals 1

    iget-object v0, p0, Landroidx/compose/ui/viewinterop/AndroidViewHolder;->m:Landroidx/lifecycle/u;

    if-eq p1, v0, :cond_0

    iput-object p1, p0, Landroidx/compose/ui/viewinterop/AndroidViewHolder;->m:Landroidx/lifecycle/u;

    invoke-static {p0, p1}, Landroidx/lifecycle/ViewTreeLifecycleOwner;->b(Landroid/view/View;Landroidx/lifecycle/u;)V

    :cond_0
    return-void
.end method

.method public final setModifier(Landroidx/compose/ui/f;)V
    .locals 1

    iget-object v0, p0, Landroidx/compose/ui/viewinterop/AndroidViewHolder;->i:Landroidx/compose/ui/f;

    if-eq p1, v0, :cond_0

    iput-object p1, p0, Landroidx/compose/ui/viewinterop/AndroidViewHolder;->i:Landroidx/compose/ui/f;

    iget-object v0, p0, Landroidx/compose/ui/viewinterop/AndroidViewHolder;->j:Lkotlin/jvm/functions/Function1;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public final setOnDensityChanged$ui_release(Lkotlin/jvm/functions/Function1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lo0/e;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Landroidx/compose/ui/viewinterop/AndroidViewHolder;->l:Lkotlin/jvm/functions/Function1;

    return-void
.end method

.method public final setOnModifierChanged$ui_release(Lkotlin/jvm/functions/Function1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroidx/compose/ui/f;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Landroidx/compose/ui/viewinterop/AndroidViewHolder;->j:Lkotlin/jvm/functions/Function1;

    return-void
.end method

.method public final setOnRequestDisallowInterceptTouchEvent$ui_release(Lkotlin/jvm/functions/Function1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Boolean;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Landroidx/compose/ui/viewinterop/AndroidViewHolder;->q:Lkotlin/jvm/functions/Function1;

    return-void
.end method

.method protected final setRelease(Lkotlin/jvm/functions/Function0;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Landroidx/compose/ui/viewinterop/AndroidViewHolder;->h:Lkotlin/jvm/functions/Function0;

    return-void
.end method

.method protected final setReset(Lkotlin/jvm/functions/Function0;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Landroidx/compose/ui/viewinterop/AndroidViewHolder;->g:Lkotlin/jvm/functions/Function0;

    return-void
.end method

.method public final setSavedStateRegistryOwner(Landroidx/savedstate/e;)V
    .locals 1

    iget-object v0, p0, Landroidx/compose/ui/viewinterop/AndroidViewHolder;->n:Landroidx/savedstate/e;

    if-eq p1, v0, :cond_0

    iput-object p1, p0, Landroidx/compose/ui/viewinterop/AndroidViewHolder;->n:Landroidx/savedstate/e;

    invoke-static {p0, p1}, Landroidx/savedstate/ViewTreeSavedStateRegistryOwner;->b(Landroid/view/View;Landroidx/savedstate/e;)V

    :cond_0
    return-void
.end method

.method protected final setUpdate(Lkotlin/jvm/functions/Function0;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Landroidx/compose/ui/viewinterop/AndroidViewHolder;->e:Lkotlin/jvm/functions/Function0;

    const/4 p1, 0x1

    iput-boolean p1, p0, Landroidx/compose/ui/viewinterop/AndroidViewHolder;->f:Z

    iget-object p1, p0, Landroidx/compose/ui/viewinterop/AndroidViewHolder;->o:Lkotlin/jvm/functions/Function0;

    invoke-interface {p1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    return-void
.end method

.method public shouldDelayChildPressedState()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
