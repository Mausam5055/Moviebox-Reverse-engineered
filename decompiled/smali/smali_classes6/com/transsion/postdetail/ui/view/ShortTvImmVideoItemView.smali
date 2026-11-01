.class public final Lcom/transsion/postdetail/ui/view/ShortTvImmVideoItemView;
.super Landroidx/constraintlayout/widget/ConstraintLayout;

# interfaces
.implements Lcom/transsion/player/orplayer/f;
.implements Landroid/view/View$OnClickListener;
.implements Landroidx/lifecycle/r;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/postdetail/ui/view/ShortTvImmVideoItemView$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u00f0\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0012\n\u0002\u0010\t\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008#\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0017\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0016\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0008\u0007*\u0002\u00c4\u0001\u0018\u00002\u00020\u00012\u00020\u00022\u00020\u00032\u00020\u0004B!\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\u0008\u0010\u0008\u001a\u0004\u0018\u00010\u0007\u0012\u0006\u0010\n\u001a\u00020\t\u00a2\u0006\u0004\u0008\u000b\u0010\u000cB\u0011\u0008\u0016\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u00a2\u0006\u0004\u0008\u000b\u0010\rB\u001b\u0008\u0016\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\u0008\u0010\u0008\u001a\u0004\u0018\u00010\u0007\u00a2\u0006\u0004\u0008\u000b\u0010\u000eJ\u000f\u0010\u0010\u001a\u00020\u000fH\u0014\u00a2\u0006\u0004\u0008\u0010\u0010\u0011J\u000f\u0010\u0012\u001a\u00020\u000fH\u0014\u00a2\u0006\u0004\u0008\u0012\u0010\u0011JE\u0010\u001d\u001a\u00020\u000f2\u0006\u0010\u0014\u001a\u00020\u00132\u0006\u0010\u0016\u001a\u00020\u00152\u0008\u0010\u0017\u001a\u0004\u0018\u00010\t2\u0008\u0010\u0019\u001a\u0004\u0018\u00010\u00182\u0008\u0010\u001a\u001a\u0004\u0018\u00010\u00182\u0008\u0008\u0002\u0010\u001c\u001a\u00020\u001b\u00a2\u0006\u0004\u0008\u001d\u0010\u001eJ\u001d\u0010#\u001a\u00020\u000f2\u0006\u0010 \u001a\u00020\u001f2\u0006\u0010\"\u001a\u00020!\u00a2\u0006\u0004\u0008#\u0010$J\u0015\u0010\'\u001a\u00020\u000f2\u0006\u0010&\u001a\u00020%\u00a2\u0006\u0004\u0008\'\u0010(J)\u0010.\u001a\u00020\u000f2\u0008\u0010*\u001a\u0004\u0018\u00010)2\u0008\u0010,\u001a\u0004\u0018\u00010+2\u0006\u0010-\u001a\u00020\t\u00a2\u0006\u0004\u0008.\u0010/J\u0017\u00102\u001a\u00020\u001b2\u0006\u00101\u001a\u000200H\u0016\u00a2\u0006\u0004\u00082\u00103J\u001f\u00107\u001a\u00020\u000f2\u0006\u00105\u001a\u0002042\u0006\u00101\u001a\u000206H\u0016\u00a2\u0006\u0004\u00087\u00108J\u000f\u00109\u001a\u00020\u000fH\u0016\u00a2\u0006\u0004\u00089\u0010\u0011J\u0019\u0010<\u001a\u00020\u000f2\u0008\u0010;\u001a\u0004\u0018\u00010:H\u0016\u00a2\u0006\u0004\u0008<\u0010=J\r\u0010>\u001a\u00020\u000f\u00a2\u0006\u0004\u0008>\u0010\u0011J\u0015\u0010@\u001a\u00020\u000f2\u0006\u0010?\u001a\u00020\u0018\u00a2\u0006\u0004\u0008@\u0010AJ\u0015\u0010C\u001a\u00020\u000f2\u0006\u0010B\u001a\u00020\u0018\u00a2\u0006\u0004\u0008C\u0010AJ\u000f\u0010D\u001a\u00020\u000fH\u0016\u00a2\u0006\u0004\u0008D\u0010\u0011J\u001f\u0010G\u001a\u00020\u000f2\u0006\u0010E\u001a\u00020\t2\u0006\u0010F\u001a\u00020\tH\u0016\u00a2\u0006\u0004\u0008G\u0010HJ\u000f\u0010I\u001a\u00020\u000fH\u0016\u00a2\u0006\u0004\u0008I\u0010\u0011J\u0019\u0010J\u001a\u00020\u000f2\u0008\u0010;\u001a\u0004\u0018\u00010:H\u0016\u00a2\u0006\u0004\u0008J\u0010=J\u0019\u0010K\u001a\u00020\u000f2\u0008\u0010;\u001a\u0004\u0018\u00010:H\u0016\u00a2\u0006\u0004\u0008K\u0010=J\u0019\u0010L\u001a\u00020\u000f2\u0008\u0010;\u001a\u0004\u0018\u00010:H\u0016\u00a2\u0006\u0004\u0008L\u0010=J!\u0010O\u001a\u00020\u000f2\u0006\u0010N\u001a\u00020M2\u0008\u0010;\u001a\u0004\u0018\u00010:H\u0016\u00a2\u0006\u0004\u0008O\u0010PJ\u0019\u0010Q\u001a\u00020\u000f2\u0008\u0010;\u001a\u0004\u0018\u00010:H\u0016\u00a2\u0006\u0004\u0008Q\u0010=J\u0019\u0010R\u001a\u00020\u000f2\u0008\u0010;\u001a\u0004\u0018\u00010:H\u0016\u00a2\u0006\u0004\u0008R\u0010=J!\u0010U\u001a\u00020\u000f2\u0006\u0010T\u001a\u00020S2\u0008\u0010;\u001a\u0004\u0018\u00010:H\u0016\u00a2\u0006\u0004\u0008U\u0010VJ\u000f\u0010W\u001a\u00020\u000fH\u0016\u00a2\u0006\u0004\u0008W\u0010\u0011J\u0019\u0010X\u001a\u00020\u000f2\u0008\u0010;\u001a\u0004\u0018\u00010:H\u0016\u00a2\u0006\u0004\u0008X\u0010=J\u0019\u0010Z\u001a\u00020\u000f2\u0008\u0010Y\u001a\u0004\u0018\u00010\u0018H\u0016\u00a2\u0006\u0004\u0008Z\u0010AJ\u000f\u0010[\u001a\u00020\u000fH\u0016\u00a2\u0006\u0004\u0008[\u0010\u0011J\u0019\u0010]\u001a\u00020\u000f2\u0008\u0010\\\u001a\u0004\u0018\u00010)H\u0016\u00a2\u0006\u0004\u0008]\u0010^J\u0019\u0010`\u001a\u00020\u000f2\u0008\u0010_\u001a\u0004\u0018\u00010\u0018H\u0002\u00a2\u0006\u0004\u0008`\u0010AJ\u0017\u0010a\u001a\u00020\u000f2\u0006\u0010\u0006\u001a\u00020\u0005H\u0002\u00a2\u0006\u0004\u0008a\u0010\rJ\u0017\u0010b\u001a\u00020\u000f2\u0006\u0010\u0014\u001a\u00020\u0013H\u0002\u00a2\u0006\u0004\u0008b\u0010cJ\u000f\u0010d\u001a\u00020\u000fH\u0002\u00a2\u0006\u0004\u0008d\u0010\u0011J\u000f\u0010e\u001a\u00020\u000fH\u0002\u00a2\u0006\u0004\u0008e\u0010\u0011J/\u0010h\u001a\u00020\u000f2\u0008\u0010e\u001a\u0004\u0018\u00010\t2\u0008\u0010f\u001a\u0004\u0018\u00010\t2\n\u0008\u0002\u0010g\u001a\u0004\u0018\u00010\tH\u0002\u00a2\u0006\u0004\u0008h\u0010iJ\u0017\u0010k\u001a\u00020\u000f2\u0006\u0010j\u001a\u00020\u001bH\u0002\u00a2\u0006\u0004\u0008k\u0010lJ\u0017\u0010m\u001a\u00020\u000f2\u0006\u0010N\u001a\u00020MH\u0002\u00a2\u0006\u0004\u0008m\u0010nJ\u0017\u0010\\\u001a\u00020\u000f2\u0006\u0010*\u001a\u00020)H\u0002\u00a2\u0006\u0004\u0008\\\u0010^J\u0019\u0010p\u001a\u00020\u000f2\u0008\u0010o\u001a\u0004\u0018\u00010\u0018H\u0002\u00a2\u0006\u0004\u0008p\u0010AJ\u000f\u0010q\u001a\u00020\u000fH\u0002\u00a2\u0006\u0004\u0008q\u0010\u0011J\u0017\u0010s\u001a\u00020\u000f2\u0006\u0010r\u001a\u00020\u001bH\u0002\u00a2\u0006\u0004\u0008s\u0010lR\u0014\u0010v\u001a\u00020\u00188\u0002X\u0082D\u00a2\u0006\u0006\n\u0004\u0008t\u0010uR\u0014\u0010z\u001a\u00020w8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008x\u0010yR\u0018\u0010~\u001a\u0004\u0018\u00010{8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008|\u0010}R\u001b\u0010\u0082\u0001\u001a\u0004\u0018\u00010\u007f8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u0080\u0001\u0010\u0081\u0001R\u001c\u0010\u0086\u0001\u001a\u0005\u0018\u00010\u0083\u00018\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u0084\u0001\u0010\u0085\u0001R\u001b\u0010\u0089\u0001\u001a\u0004\u0018\u00010\u00138\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u0087\u0001\u0010\u0088\u0001R\u001a\u0010\u0016\u001a\u0004\u0018\u00010\u00158\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u008a\u0001\u0010\u008b\u0001R\u001a\u0010\u008d\u0001\u001a\u0004\u0018\u00010\u001b8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0007\n\u0005\u0008f\u0010\u008c\u0001R*\u0010\u0017\u001a\u0004\u0018\u00010\t8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0018\n\u0006\u0008\u008e\u0001\u0010\u008f\u0001\u001a\u0006\u0008\u0090\u0001\u0010\u0091\u0001\"\u0006\u0008\u0092\u0001\u0010\u0093\u0001R\u0019\u0010\u0019\u001a\u0004\u0018\u00010\u00188\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0007\n\u0005\u0008\u0094\u0001\u0010uR\u001a\u0010 \u001a\u0004\u0018\u00010\u001f8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u0095\u0001\u0010\u0096\u0001R\u001a\u0010\"\u001a\u0004\u0018\u00010!8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u0097\u0001\u0010\u0098\u0001R\u001a\u0010&\u001a\u0004\u0018\u00010%8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u0099\u0001\u0010\u009a\u0001R\u001b\u0010\u009d\u0001\u001a\u0005\u0018\u00010\u009b\u00018\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0007\n\u0005\u0008`\u0010\u009c\u0001R\u001b\u0010\u00a0\u0001\u001a\u0005\u0018\u00010\u009e\u00018\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0007\n\u0005\u0008p\u0010\u009f\u0001R\"\u0010\u00a5\u0001\u001a\u0005\u0018\u00010\u00a1\u00018BX\u0082\u0084\u0002\u00a2\u0006\u000f\n\u0005\u0008a\u0010\u00a2\u0001\u001a\u0006\u0008\u00a3\u0001\u0010\u00a4\u0001R\u001b\u0010\u00a8\u0001\u001a\u0005\u0018\u00010\u00a6\u00018\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0007\n\u0005\u0008q\u0010\u00a7\u0001R\u0019\u0010\u00ab\u0001\u001a\u00020\u001b8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u00a9\u0001\u0010\u00aa\u0001R\u0019\u0010\u00ad\u0001\u001a\u00020\u001b8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u00ac\u0001\u0010\u00aa\u0001R\u0018\u0010\u00ae\u0001\u001a\u00020\u001b8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0007\n\u0005\u0008m\u0010\u00aa\u0001R\u0019\u0010\u00b1\u0001\u001a\u00020M8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u00af\u0001\u0010\u00b0\u0001R\u0016\u0010\u00b3\u0001\u001a\u00020\t8\u0002X\u0082\u0004\u00a2\u0006\u0007\n\u0005\u0008\\\u0010\u00b2\u0001R\u0016\u0010\u00b4\u0001\u001a\u00020\t8\u0002X\u0082\u0004\u00a2\u0006\u0007\n\u0005\u0008e\u0010\u00b2\u0001R\u0017\u0010\u00b6\u0001\u001a\u00020\t8\u0002X\u0082\u0004\u00a2\u0006\u0008\n\u0006\u0008\u00b5\u0001\u0010\u00b2\u0001R\u0017\u0010\u00b8\u0001\u001a\u00020\t8\u0002X\u0082\u0004\u00a2\u0006\u0008\n\u0006\u0008\u00b7\u0001\u0010\u00b2\u0001R\u0017\u0010\u00ba\u0001\u001a\u00020\t8\u0002X\u0082\u0004\u00a2\u0006\u0008\n\u0006\u0008\u00b9\u0001\u0010\u00b2\u0001R\u0016\u0010\u00bb\u0001\u001a\u00020\t8\u0002X\u0082\u0004\u00a2\u0006\u0007\n\u0005\u0008d\u0010\u00b2\u0001R\u0017\u0010?\u001a\u00020\u00188\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0007\n\u0005\u0008\u00bc\u0001\u0010uR\u0018\u0010\u00c0\u0001\u001a\u00030\u00bd\u00018\u0002X\u0082\u0004\u00a2\u0006\u0008\n\u0006\u0008\u00be\u0001\u0010\u00bf\u0001R\u0018\u0010\u00c1\u0001\u001a\u00020M8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0007\n\u0005\u0008h\u0010\u00b0\u0001R\u0018\u0010\u001c\u001a\u00020\u001b8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u00c2\u0001\u0010\u00aa\u0001R\u0018\u0010\u00c3\u0001\u001a\u00020\u001b8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0007\n\u0005\u0008b\u0010\u00aa\u0001R\u0018\u0010\u00c7\u0001\u001a\u00030\u00c4\u00018\u0002X\u0082\u0004\u00a2\u0006\u0008\n\u0006\u0008\u00c5\u0001\u0010\u00c6\u0001R\u0019\u0010\u00c9\u0001\u001a\u00020\u001b8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u00c8\u0001\u0010\u00aa\u0001\u00a8\u0006\u00ca\u0001\u00b2\u0006\u000c\u0010~\u001a\u00020{8\nX\u008a\u0084\u0002\u00b2\u0006\r\u0010\u0082\u0001\u001a\u00020\u007f8\nX\u008a\u0084\u0002"
    }
    d2 = {
        "Lcom/transsion/postdetail/ui/view/ShortTvImmVideoItemView;",
        "Landroidx/constraintlayout/widget/ConstraintLayout;",
        "Lcom/transsion/player/orplayer/f;",
        "Landroid/view/View$OnClickListener;",
        "Landroidx/lifecycle/r;",
        "Landroid/content/Context;",
        "context",
        "Landroid/util/AttributeSet;",
        "attrs",
        "",
        "defStyleAttr",
        "<init>",
        "(Landroid/content/Context;Landroid/util/AttributeSet;I)V",
        "(Landroid/content/Context;)V",
        "(Landroid/content/Context;Landroid/util/AttributeSet;)V",
        "",
        "onAttachedToWindow",
        "()V",
        "onDetachedFromWindow",
        "Lcom/transsion/moviedetailapi/bean/Subject;",
        "item",
        "Landroidx/fragment/app/Fragment;",
        "fragment",
        "position",
        "",
        "basePostId",
        "baseItemType",
        "",
        "attachToMain",
        "setData",
        "(Lcom/transsion/moviedetailapi/bean/Subject;Landroidx/fragment/app/Fragment;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Z)V",
        "Lcom/transsion/player/orplayer/g;",
        "orPlayer",
        "Lcom/transsion/player/ui/ORPlayerView;",
        "orPlayerView",
        "setPlayer",
        "(Lcom/transsion/player/orplayer/g;Lcom/transsion/player/ui/ORPlayerView;)V",
        "Lcom/transsion/shorttv/base/pager/PagerLayoutManager;",
        "pagerLayoutManager",
        "setPagerLayoutManager",
        "(Lcom/transsion/shorttv/base/pager/PagerLayoutManager;)V",
        "Landroid/view/View;",
        "view",
        "Lcom/transsion/moviedetailapi/bean/Video;",
        "video",
        "maxHeight",
        "addVideoView",
        "(Landroid/view/View;Lcom/transsion/moviedetailapi/bean/Video;I)V",
        "Landroid/view/MotionEvent;",
        "event",
        "onTouchEvent",
        "(Landroid/view/MotionEvent;)Z",
        "Landroidx/lifecycle/u;",
        "source",
        "Landroidx/lifecycle/Lifecycle$Event;",
        "onStateChanged",
        "(Landroidx/lifecycle/u;Landroidx/lifecycle/Lifecycle$Event;)V",
        "onPlayerReset",
        "Lao/e;",
        "mediaSource",
        "onPlayerRelease",
        "(Lao/e;)V",
        "app2Background",
        "pageFrom",
        "videoStartPrepare",
        "(Ljava/lang/String;)V",
        "url",
        "setVideoUrl",
        "onSetDataSource",
        "width",
        "height",
        "onVideoSizeChanged",
        "(II)V",
        "onRenderFirstFrame",
        "onVideoStart",
        "onPrepare",
        "onVideoPause",
        "",
        "progress",
        "onProgress",
        "(JLao/e;)V",
        "onLoadingBegin",
        "onLoadingEnd",
        "Lcom/transsion/player/orplayer/PlayError;",
        "errorInfo",
        "onPlayError",
        "(Lcom/transsion/player/orplayer/PlayError;Lao/e;)V",
        "onLoopingStart",
        "onCompletion",
        "uuid",
        "onMediaItemTransition",
        "setOnSeekCompleteListener",
        "v",
        "onClick",
        "(Landroid/view/View;)V",
        "type",
        "n",
        "p",
        "F",
        "(Lcom/transsion/moviedetailapi/bean/Subject;)V",
        "A",
        "w",
        "h",
        "rootHeight",
        "D",
        "(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V",
        "show",
        "setLoading",
        "(Z)V",
        "t",
        "(J)V",
        "id",
        "o",
        "q",
        "visible",
        "setContentVisibility",
        "a",
        "Ljava/lang/String;",
        "TAG",
        "Lso/l0;",
        "b",
        "Lso/l0;",
        "viewBinding",
        "Lcom/transsion/postdetail/viewmodel/x;",
        "c",
        "Lcom/transsion/postdetail/viewmodel/x;",
        "videoDetailModel",
        "Lcom/transsion/postdetail/shorttv/ShortTvPlayListViewModel;",
        "d",
        "Lcom/transsion/postdetail/shorttv/ShortTvPlayListViewModel;",
        "shortTvPlayListViewModel",
        "Lcom/transsion/share/share/ShareDialogFragment;",
        "e",
        "Lcom/transsion/share/share/ShareDialogFragment;",
        "mShareDialog",
        "f",
        "Lcom/transsion/moviedetailapi/bean/Subject;",
        "data",
        "g",
        "Landroidx/fragment/app/Fragment;",
        "Ljava/lang/Boolean;",
        "videoLoadMore",
        "i",
        "Ljava/lang/Integer;",
        "getPosition",
        "()Ljava/lang/Integer;",
        "setPosition",
        "(Ljava/lang/Integer;)V",
        "j",
        "k",
        "Lcom/transsion/player/orplayer/g;",
        "l",
        "Lcom/transsion/player/ui/ORPlayerView;",
        "m",
        "Lcom/transsion/shorttv/base/pager/PagerLayoutManager;",
        "Lcom/transsion/postdetail/ui/view/ImmVideoGuideView;",
        "Lcom/transsion/postdetail/ui/view/ImmVideoGuideView;",
        "guideView",
        "Landroid/view/GestureDetector;",
        "Landroid/view/GestureDetector;",
        "gestureDetector",
        "Lcom/transsnet/loginapi/ILoginApi;",
        "Lkotlin/Lazy;",
        "getLoginApi",
        "()Lcom/transsnet/loginapi/ILoginApi;",
        "loginApi",
        "Lcom/transsion/postdetail/layer/b;",
        "Lcom/transsion/postdetail/layer/b;",
        "dotLayer",
        "r",
        "Z",
        "isClickPause",
        "s",
        "isHorizontalDragging",
        "isPageHide",
        "u",
        "J",
        "currentSaveProgress",
        "I",
        "resImgLargeWidth",
        "resImgLargeHeight",
        "x",
        "resImgSmallWidth",
        "y",
        "resImgSmallHeight",
        "z",
        "screenHeight",
        "dp170",
        "B",
        "Ljava/util/concurrent/atomic/AtomicBoolean;",
        "C",
        "Ljava/util/concurrent/atomic/AtomicBoolean;",
        "isSeekToFinish",
        "nextSeekTo",
        "E",
        "isPageRelease",
        "com/transsion/postdetail/ui/view/ShortTvImmVideoItemView$b",
        "G",
        "Lcom/transsion/postdetail/ui/view/ShortTvImmVideoItemView$b;",
        "favoriteResultObserver",
        "H",
        "isPrepare",
        "PostDetail_psRelease"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
.end annotation


# instance fields
.field private final A:I

.field private B:Ljava/lang/String;

.field private final C:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private D:J

.field private E:Z

.field private F:Z

.field private final G:Lcom/transsion/postdetail/ui/view/ShortTvImmVideoItemView$b;

.field private H:Z

.field private final a:Ljava/lang/String;

.field private final b:Lso/l0;

.field private c:Lcom/transsion/postdetail/viewmodel/x;

.field private d:Lcom/transsion/postdetail/shorttv/ShortTvPlayListViewModel;

.field private e:Lcom/transsion/share/share/ShareDialogFragment;

.field private f:Lcom/transsion/moviedetailapi/bean/Subject;

.field private g:Landroidx/fragment/app/Fragment;

.field private h:Ljava/lang/Boolean;

.field private i:Ljava/lang/Integer;

.field private j:Ljava/lang/String;

.field private k:Lcom/transsion/player/orplayer/g;

.field private l:Lcom/transsion/player/ui/ORPlayerView;

.field private m:Lcom/transsion/shorttv/base/pager/PagerLayoutManager;

.field private n:Lcom/transsion/postdetail/ui/view/ImmVideoGuideView;

.field private o:Landroid/view/GestureDetector;

.field private final p:Lkotlin/Lazy;

.field private q:Lcom/transsion/postdetail/layer/b;

.field private r:Z

.field private s:Z

.field private t:Z

.field private u:J

.field private final v:I

.field private final w:I

.field private final x:I

.field private final y:I

.field private final z:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/transsion/postdetail/ui/view/ShortTvImmVideoItemView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/transsion/postdetail/ui/view/ShortTvImmVideoItemView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2, p3}, Landroidx/constraintlayout/widget/ConstraintLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const-string p2, "ImmVideoPlayer"

    iput-object p2, p0, Lcom/transsion/postdetail/ui/view/ShortTvImmVideoItemView;->a:Ljava/lang/String;

    new-instance p2, Lcom/transsion/postdetail/ui/view/b2;

    invoke-direct {p2}, Lcom/transsion/postdetail/ui/view/b2;-><init>()V

    invoke-static {p2}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p2

    iput-object p2, p0, Lcom/transsion/postdetail/ui/view/ShortTvImmVideoItemView;->p:Lkotlin/Lazy;

    invoke-static {}, Lcom/blankj/utilcode/util/y;->c()I

    move-result p2

    iput p2, p0, Lcom/transsion/postdetail/ui/view/ShortTvImmVideoItemView;->z:I

    const/high16 p2, 0x432a0000    # 170.0f

    invoke-static {p2}, Lcom/blankj/utilcode/util/a0;->a(F)I

    move-result p2

    iput p2, p0, Lcom/transsion/postdetail/ui/view/ShortTvImmVideoItemView;->A:I

    const-string p2, ""

    iput-object p2, p0, Lcom/transsion/postdetail/ui/view/ShortTvImmVideoItemView;->B:Ljava/lang/String;

    new-instance p2, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 p3, 0x1

    invoke-direct {p2, p3}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p2, p0, Lcom/transsion/postdetail/ui/view/ShortTvImmVideoItemView;->C:Ljava/util/concurrent/atomic/AtomicBoolean;

    iput-boolean p3, p0, Lcom/transsion/postdetail/ui/view/ShortTvImmVideoItemView;->E:Z

    new-instance p2, Lcom/transsion/postdetail/ui/view/ShortTvImmVideoItemView$b;

    invoke-direct {p2, p0}, Lcom/transsion/postdetail/ui/view/ShortTvImmVideoItemView$b;-><init>(Lcom/transsion/postdetail/ui/view/ShortTvImmVideoItemView;)V

    iput-object p2, p0, Lcom/transsion/postdetail/ui/view/ShortTvImmVideoItemView;->G:Lcom/transsion/postdetail/ui/view/ShortTvImmVideoItemView$b;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    sget p3, Lcom/transsion/postdetail/R$layout;->layout_short_tv_immersion_video_item_view:I

    invoke-static {p2, p3, p0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    invoke-static {p0}, Lso/l0;->a(Landroid/view/View;)Lso/l0;

    move-result-object p2

    const-string p3, "bind(...)"

    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p2, p0, Lcom/transsion/postdetail/ui/view/ShortTvImmVideoItemView;->b:Lso/l0;

    iget-object p3, p2, Lso/l0;->s:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {p3, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p3, p2, Lso/l0;->i:Landroidx/appcompat/widget/AppCompatImageView;

    invoke-virtual {p3, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p3, p2, Lso/l0;->k:Lcom/google/android/material/imageview/ShapeableImageView;

    invoke-virtual {p3, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p3, p2, Lso/l0;->u:Lcom/noober/background/view/BLTextView;

    invoke-virtual {p3, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p3, p2, Lso/l0;->g:Landroidx/appcompat/widget/AppCompatImageView;

    invoke-virtual {p3, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p3, p2, Lso/l0;->j:Lcom/google/android/material/imageview/ShapeableImageView;

    invoke-virtual {p3, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p3, p2, Lso/l0;->v:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {p3, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p3, p2, Lso/l0;->q:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {p3, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/high16 p3, 0x42400000    # 48.0f

    invoke-static {p3}, Lcom/blankj/utilcode/util/a0;->a(F)I

    move-result p3

    iput p3, p0, Lcom/transsion/postdetail/ui/view/ShortTvImmVideoItemView;->v:I

    const/high16 p3, 0x42800000    # 64.0f

    invoke-static {p3}, Lcom/blankj/utilcode/util/a0;->a(F)I

    move-result p3

    iput p3, p0, Lcom/transsion/postdetail/ui/view/ShortTvImmVideoItemView;->w:I

    const/high16 p3, 0x41c00000    # 24.0f

    invoke-static {p3}, Lcom/blankj/utilcode/util/a0;->a(F)I

    move-result p3

    iput p3, p0, Lcom/transsion/postdetail/ui/view/ShortTvImmVideoItemView;->x:I

    const/high16 p3, 0x42000000    # 32.0f

    invoke-static {p3}, Lcom/blankj/utilcode/util/a0;->a(F)I

    move-result p3

    iput p3, p0, Lcom/transsion/postdetail/ui/view/ShortTvImmVideoItemView;->y:I

    invoke-direct {p0, p1}, Lcom/transsion/postdetail/ui/view/ShortTvImmVideoItemView;->p(Landroid/content/Context;)V

    sget-object p1, Lcom/transsion/postdetail/helper/ShortTvImmVideoHelper;->k:Lcom/transsion/postdetail/helper/ShortTvImmVideoHelper$a;

    invoke-virtual {p1}, Lcom/transsion/postdetail/helper/ShortTvImmVideoHelper$a;->a()Lcom/transsion/postdetail/helper/ShortTvImmVideoHelper;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transsion/postdetail/helper/ShortTvImmVideoHelper;->m()I

    move-result p1

    if-lez p1, :cond_0

    iget-object p1, p2, Lso/l0;->n:Landroid/widget/Space;

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    const-string p3, "null cannot be cast to non-null type androidx.constraintlayout.widget.ConstraintLayout.LayoutParams"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroidx/constraintlayout/widget/ConstraintLayout$b;

    iget p3, p1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    const/high16 v0, 0x420c0000    # 35.0f

    invoke-static {v0}, Lcom/blankj/utilcode/util/a0;->a(F)I

    move-result v0

    if-ge p3, v0, :cond_0

    iget p3, p1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    const/high16 v0, 0x41200000    # 10.0f

    invoke-static {v0}, Lcom/blankj/utilcode/util/a0;->a(F)I

    move-result v0

    add-int/2addr p3, v0

    iput p3, p1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    iget-object p2, p2, Lso/l0;->n:Landroid/widget/Space;

    invoke-virtual {p2, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    return-void
.end method

.method private final A()V
    .locals 12

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/transsion/postdetail/ui/view/ShortTvImmVideoItemView;->b:Lso/l0;

    iget-object v2, v2, Lso/l0;->k:Lcom/google/android/material/imageview/ShapeableImageView;

    const-string v3, "ivVideoAvatar"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v2}, Ljg/c;->g(Landroid/view/View;)V

    iget-object v2, p0, Lcom/transsion/postdetail/ui/view/ShortTvImmVideoItemView;->b:Lso/l0;

    iget-object v2, v2, Lso/l0;->g:Landroidx/appcompat/widget/AppCompatImageView;

    const-string v3, "ivDownload"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v2}, Ljg/c;->k(Landroid/view/View;)V

    iget-object v2, p0, Lcom/transsion/postdetail/ui/view/ShortTvImmVideoItemView;->b:Lso/l0;

    iget-object v2, v2, Lso/l0;->v:Landroidx/appcompat/widget/AppCompatTextView;

    const-string v3, "tvTitle"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v2}, Ljg/c;->k(Landroid/view/View;)V

    iget-object v2, p0, Lcom/transsion/postdetail/ui/view/ShortTvImmVideoItemView;->b:Lso/l0;

    iget-object v2, v2, Lso/l0;->u:Lcom/noober/background/view/BLTextView;

    const-string v3, "tvShortTvEp"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v2}, Ljg/c;->k(Landroid/view/View;)V

    iget-object v2, p0, Lcom/transsion/postdetail/ui/view/ShortTvImmVideoItemView;->b:Lso/l0;

    iget-object v2, v2, Lso/l0;->j:Lcom/google/android/material/imageview/ShapeableImageView;

    const-string v3, "ivShortCover"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v2}, Ljg/c;->k(Landroid/view/View;)V

    iget-object v2, p0, Lcom/transsion/postdetail/ui/view/ShortTvImmVideoItemView;->b:Lso/l0;

    iget-object v2, v2, Lso/l0;->v:Landroidx/appcompat/widget/AppCompatTextView;

    iget-object v4, p0, Lcom/transsion/postdetail/ui/view/ShortTvImmVideoItemView;->f:Lcom/transsion/moviedetailapi/bean/Subject;

    const/4 v5, 0x0

    if-eqz v4, :cond_0

    invoke-virtual {v4}, Lcom/transsion/moviedetailapi/bean/Subject;->getTitle()Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    :cond_0
    move-object v4, v5

    :goto_0
    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget-object v2, Lcom/transsion/postdetail/util/t;->a:Lcom/transsion/postdetail/util/t;

    iget-object v4, p0, Lcom/transsion/postdetail/ui/view/ShortTvImmVideoItemView;->f:Lcom/transsion/moviedetailapi/bean/Subject;

    if-eqz v4, :cond_1

    invoke-virtual {v4}, Lcom/transsion/moviedetailapi/bean/Subject;->getTotalEpisode()I

    move-result v4

    goto :goto_1

    :cond_1
    move v4, v1

    :goto_1
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/transsion/postdetail/util/t;->a(Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object v2

    iget-object v4, p0, Lcom/transsion/postdetail/ui/view/ShortTvImmVideoItemView;->b:Lso/l0;

    iget-object v4, v4, Lso/l0;->q:Landroidx/appcompat/widget/AppCompatTextView;

    iget-object v6, p0, Lcom/transsion/postdetail/ui/view/ShortTvImmVideoItemView;->f:Lcom/transsion/moviedetailapi/bean/Subject;

    if-eqz v6, :cond_2

    invoke-virtual {v6}, Lcom/transsion/moviedetailapi/bean/Subject;->getDescription()Ljava/lang/String;

    move-result-object v6

    goto :goto_2

    :cond_2
    move-object v6, v5

    :goto_2
    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v4, p0, Lcom/transsion/postdetail/ui/view/ShortTvImmVideoItemView;->b:Lso/l0;

    iget-object v4, v4, Lso/l0;->u:Lcom/noober/background/view/BLTextView;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v6

    sget v7, Lcom/transsion/postdetail/R$string;->short_tv_play_all:I

    new-array v8, v0, [Ljava/lang/Object;

    aput-object v2, v8, v1

    invoke-virtual {v6, v7, v8}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lcom/transsion/postdetail/ui/view/ShortTvImmVideoItemView;->b:Lso/l0;

    iget-object v2, v2, Lso/l0;->u:Lcom/noober/background/view/BLTextView;

    invoke-static {v2}, Lcom/transsion/baseui/widget/jumpingbeans/a;->a(Landroid/widget/TextView;)Lcom/transsion/baseui/widget/jumpingbeans/a$a;

    move-result-object v2

    iget-object v4, p0, Lcom/transsion/postdetail/ui/view/ShortTvImmVideoItemView;->b:Lso/l0;

    iget-object v4, v4, Lso/l0;->u:Lcom/noober/background/view/BLTextView;

    invoke-virtual {v4}, Landroidx/appcompat/widget/AppCompatTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v2, v1, v4}, Lcom/transsion/baseui/widget/jumpingbeans/a$a;->e(II)Lcom/transsion/baseui/widget/jumpingbeans/a$a;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/transsion/baseui/widget/jumpingbeans/a$a;->g(Z)Lcom/transsion/baseui/widget/jumpingbeans/a$a;

    move-result-object v1

    const/16 v2, 0x64

    invoke-virtual {v1, v2}, Lcom/transsion/baseui/widget/jumpingbeans/a$a;->i(I)Lcom/transsion/baseui/widget/jumpingbeans/a$a;

    move-result-object v1

    const v2, 0x3d4ccccd    # 0.05f

    invoke-virtual {v1, v2}, Lcom/transsion/baseui/widget/jumpingbeans/a$a;->f(F)Lcom/transsion/baseui/widget/jumpingbeans/a$a;

    move-result-object v1

    const/16 v2, 0x2710

    invoke-virtual {v1, v2}, Lcom/transsion/baseui/widget/jumpingbeans/a$a;->h(I)Lcom/transsion/baseui/widget/jumpingbeans/a$a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/transsion/baseui/widget/jumpingbeans/a$a;->a()Lcom/transsion/baseui/widget/jumpingbeans/a;

    iget-object v1, p0, Lcom/transsion/postdetail/ui/view/ShortTvImmVideoItemView;->b:Lso/l0;

    iget-object v1, v1, Lso/l0;->j:Lcom/google/android/material/imageview/ShapeableImageView;

    iget-object v1, p0, Lcom/transsion/postdetail/ui/view/ShortTvImmVideoItemView;->f:Lcom/transsion/moviedetailapi/bean/Subject;

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Lcom/transsion/moviedetailapi/bean/Subject;->getBuiltIn()Z

    move-result v1

    if-ne v1, v0, :cond_3

    invoke-static {}, Lkotlinx/coroutines/y0;->c()Lkotlinx/coroutines/a2;

    move-result-object v0

    invoke-static {v0}, Lkotlinx/coroutines/o0;->a(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/n0;

    move-result-object v6

    new-instance v9, Lcom/transsion/postdetail/ui/view/ShortTvImmVideoItemView$updateShortTVInfo$1;

    invoke-direct {v9, p0, v5}, Lcom/transsion/postdetail/ui/view/ShortTvImmVideoItemView$updateShortTVInfo$1;-><init>(Lcom/transsion/postdetail/ui/view/ShortTvImmVideoItemView;Lkotlin/coroutines/Continuation;)V

    const/4 v10, 0x3

    const/4 v11, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static/range {v6 .. v11}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    goto :goto_3

    :cond_3
    iget-object v1, p0, Lcom/transsion/postdetail/ui/view/ShortTvImmVideoItemView;->f:Lcom/transsion/moviedetailapi/bean/Subject;

    if-eqz v1, :cond_8

    invoke-virtual {v1}, Lcom/transsion/moviedetailapi/bean/Subject;->getCover()Lcom/transsion/moviedetailapi/bean/Cover;

    move-result-object v1

    if-eqz v1, :cond_8

    invoke-virtual {v1}, Lcom/transsion/moviedetailapi/bean/Cover;->getUrl()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_8

    iget-object v2, p0, Lcom/transsion/postdetail/ui/view/ShortTvImmVideoItemView;->g:Landroidx/fragment/app/Fragment;

    if-eqz v2, :cond_8

    invoke-virtual {v2}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    if-nez v2, :cond_4

    goto :goto_3

    :cond_4
    invoke-virtual {v2}, Landroid/app/Activity;->isFinishing()Z

    move-result v4

    if-ne v4, v0, :cond_5

    goto :goto_3

    :cond_5
    sget-object v4, Lej/f;->a:Lej/f$a;

    invoke-virtual {v4, v2}, Lej/f$a;->m(Landroid/content/Context;)Lej/f$b;

    move-result-object v2

    invoke-virtual {v2, v1}, Lej/f$b;->g(Ljava/lang/String;)Lej/f$b;

    move-result-object v1

    const/high16 v2, 0x41a80000    # 21.0f

    invoke-static {v2}, Lcom/blankj/utilcode/util/i;->e(F)I

    move-result v2

    invoke-virtual {v1, v2}, Lej/f$b;->m(I)Lej/f$b;

    move-result-object v1

    const/high16 v2, 0x41f00000    # 30.0f

    invoke-static {v2}, Lcom/blankj/utilcode/util/i;->e(F)I

    move-result v2

    invoke-virtual {v1, v2}, Lej/f$b;->c(I)Lej/f$b;

    move-result-object v1

    iget-object v2, p0, Lcom/transsion/postdetail/ui/view/ShortTvImmVideoItemView;->f:Lcom/transsion/moviedetailapi/bean/Subject;

    if-eqz v2, :cond_6

    invoke-virtual {v2}, Lcom/transsion/moviedetailapi/bean/Subject;->getCover()Lcom/transsion/moviedetailapi/bean/Cover;

    move-result-object v2

    if-eqz v2, :cond_6

    invoke-virtual {v2}, Lcom/transsion/moviedetailapi/bean/Cover;->getThumbnail()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_7

    :cond_6
    const-string v2, ""

    :cond_7
    invoke-virtual {v1, v2}, Lej/f$b;->l(Ljava/lang/String;)Lej/f$b;

    move-result-object v1

    invoke-virtual {v1, v0}, Lej/f$b;->h(Z)Lej/f$b;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/postdetail/ui/view/ShortTvImmVideoItemView;->b:Lso/l0;

    iget-object v1, v1, Lso/l0;->j:Lcom/google/android/material/imageview/ShapeableImageView;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lej/f$b;->d(Landroid/widget/ImageView;)V

    :cond_8
    :goto_3
    new-instance v0, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v0}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    iget-object v1, p0, Lcom/transsion/postdetail/ui/view/ShortTvImmVideoItemView;->f:Lcom/transsion/moviedetailapi/bean/Subject;

    if-eqz v1, :cond_9

    invoke-virtual {v1}, Lcom/transsion/moviedetailapi/bean/Subject;->getShortTVFavInfo()Lcom/transsion/moviedetailapi/bean/ShortTVFavInfo;

    move-result-object v5

    :cond_9
    iput-object v5, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    const-string v1, "0"

    if-nez v5, :cond_a

    new-instance v2, Lcom/transsion/moviedetailapi/bean/ShortTVFavInfo;

    const/4 v10, 0x7

    const/4 v11, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v6, v2

    invoke-direct/range {v6 .. v11}, Lcom/transsion/moviedetailapi/bean/ShortTVFavInfo;-><init>(Ljava/lang/String;ZLjava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual {v2, v1}, Lcom/transsion/moviedetailapi/bean/ShortTVFavInfo;->setFavoriteNum(Ljava/lang/String;)V

    iput-object v2, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    iget-object v3, p0, Lcom/transsion/postdetail/ui/view/ShortTvImmVideoItemView;->f:Lcom/transsion/moviedetailapi/bean/Subject;

    if-eqz v3, :cond_a

    invoke-virtual {v3, v2}, Lcom/transsion/moviedetailapi/bean/Subject;->setShortTVFavInfo(Lcom/transsion/moviedetailapi/bean/ShortTVFavInfo;)V

    :cond_a
    iget-object v2, p0, Lcom/transsion/postdetail/ui/view/ShortTvImmVideoItemView;->b:Lso/l0;

    iget-object v2, v2, Lso/l0;->r:Landroidx/appcompat/widget/AppCompatTextView;

    const-string v3, "tvFavorite"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v2}, Ljg/c;->k(Landroid/view/View;)V

    iget-object v2, p0, Lcom/transsion/postdetail/ui/view/ShortTvImmVideoItemView;->b:Lso/l0;

    iget-object v2, v2, Lso/l0;->r:Landroidx/appcompat/widget/AppCompatTextView;

    iget-object v3, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v3, Lcom/transsion/moviedetailapi/bean/ShortTVFavInfo;

    invoke-virtual {v3}, Lcom/transsion/moviedetailapi/bean/ShortTVFavInfo;->getHasFavorite()Z

    move-result v3

    invoke-virtual {v2, v3}, Landroid/view/View;->setSelected(Z)V

    iget-object v2, p0, Lcom/transsion/postdetail/ui/view/ShortTvImmVideoItemView;->b:Lso/l0;

    iget-object v2, v2, Lso/l0;->r:Landroidx/appcompat/widget/AppCompatTextView;

    iget-object v3, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v3, Lcom/transsion/moviedetailapi/bean/ShortTVFavInfo;

    invoke-virtual {v3}, Lcom/transsion/moviedetailapi/bean/ShortTVFavInfo;->getFavoriteNum()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_b

    goto :goto_4

    :cond_b
    move-object v1, v3

    :goto_4
    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/transsion/baseui/util/j;->a(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/transsion/postdetail/ui/view/ShortTvImmVideoItemView;->b:Lso/l0;

    iget-object v1, v1, Lso/l0;->r:Landroidx/appcompat/widget/AppCompatTextView;

    new-instance v2, Lcom/transsion/postdetail/ui/view/y1;

    invoke-direct {v2, p0, v0}, Lcom/transsion/postdetail/ui/view/y1;-><init>(Lcom/transsion/postdetail/ui/view/ShortTvImmVideoItemView;Lkotlin/jvm/internal/Ref$ObjectRef;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type androidx.appcompat.app.AppCompatActivity"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v3, v0

    check-cast v3, Landroidx/appcompat/app/AppCompatActivity;

    new-instance v8, Lcom/transsion/postdetail/ui/view/z1;

    invoke-direct {v8, p0}, Lcom/transsion/postdetail/ui/view/z1;-><init>(Lcom/transsion/postdetail/ui/view/ShortTvImmVideoItemView;)V

    sget-object v0, Lcom/transsnet/flow/event/AppScopeVMlProvider;->INSTANCE:Lcom/transsnet/flow/event/AppScopeVMlProvider;

    const-class v1, Lcom/transsnet/flow/event/FlowEventBus;

    invoke-virtual {v0, v1}, Lcom/transsnet/flow/event/AppScopeVMlProvider;->getApplicationScopeViewModel(Ljava/lang/Class;)Landroidx/lifecycle/t0;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/transsnet/flow/event/FlowEventBus;

    const-class v0, Luy/c;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v0, "getName(...)"

    invoke-static {v4, v0}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v5, Landroidx/lifecycle/Lifecycle$State;->CREATED:Landroidx/lifecycle/Lifecycle$State;

    invoke-static {}, Lkotlinx/coroutines/y0;->c()Lkotlinx/coroutines/a2;

    move-result-object v0

    invoke-virtual {v0}, Lkotlinx/coroutines/a2;->d()Lkotlinx/coroutines/a2;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v8}, Lcom/transsnet/flow/event/FlowEventBus;->observeEvent(Landroidx/lifecycle/u;Ljava/lang/String;Landroidx/lifecycle/Lifecycle$State;Lkotlinx/coroutines/i0;ZLkotlin/jvm/functions/Function1;)Lkotlinx/coroutines/t1;

    iget-object v0, p0, Lcom/transsion/postdetail/ui/view/ShortTvImmVideoItemView;->f:Lcom/transsion/moviedetailapi/bean/Subject;

    if-eqz v0, :cond_c

    invoke-virtual {v0}, Lcom/transsion/moviedetailapi/bean/Subject;->getShortTVFirstEp()Lcom/transsion/moviedetailapi/bean/ShortTVItem;

    move-result-object v0

    if-eqz v0, :cond_c

    invoke-virtual {v0}, Lcom/transsion/moviedetailapi/bean/ShortTVItem;->getVideo()Lcom/transsion/moviedetailapi/bean/Media;

    move-result-object v0

    if-eqz v0, :cond_c

    invoke-virtual {v0}, Lcom/transsion/moviedetailapi/bean/Media;->getVideoAddress()Lcom/transsion/moviedetailapi/bean/Video;

    move-result-object v0

    if-eqz v0, :cond_c

    invoke-virtual {v0}, Lcom/transsion/moviedetailapi/bean/Video;->getWidth()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0}, Lcom/transsion/moviedetailapi/bean/Video;->getHeight()Ljava/lang/Integer;

    move-result-object v3

    const/4 v5, 0x4

    const/4 v6, 0x0

    const/4 v4, 0x0

    move-object v1, p0

    invoke-static/range {v1 .. v6}, Lcom/transsion/postdetail/ui/view/ShortTvImmVideoItemView;->E(Lcom/transsion/postdetail/ui/view/ShortTvImmVideoItemView;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;ILjava/lang/Object;)V

    :cond_c
    return-void
.end method

.method private static final B(Lcom/transsion/postdetail/ui/view/ShortTvImmVideoItemView;Lkotlin/jvm/internal/Ref$ObjectRef;Landroid/view/View;)V
    .locals 9

    sget-object v0, Lcom/transsion/postdetail/shorttv/k;->a:Lcom/transsion/postdetail/shorttv/k;

    iget-object p2, p0, Lcom/transsion/postdetail/ui/view/ShortTvImmVideoItemView;->f:Lcom/transsion/moviedetailapi/bean/Subject;

    const/4 v1, 0x0

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lcom/transsion/moviedetailapi/bean/Subject;->getSubjectId()Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :cond_0
    move-object p2, v1

    :goto_0
    iget-object v2, p0, Lcom/transsion/postdetail/ui/view/ShortTvImmVideoItemView;->f:Lcom/transsion/moviedetailapi/bean/Subject;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lcom/transsion/moviedetailapi/bean/Subject;->getOps()Ljava/lang/String;

    move-result-object v1

    :cond_1
    move-object v2, v1

    iget-object p1, p1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast p1, Lcom/transsion/moviedetailapi/bean/ShortTVFavInfo;

    invoke-virtual {p1}, Lcom/transsion/moviedetailapi/bean/ShortTVFavInfo;->getHasFavorite()Z

    move-result v4

    const/16 v7, 0x20

    const/4 v8, 0x0

    const-string v3, ""

    const-string v5, "shorttv_detail_video"

    const/4 v6, 0x0

    move-object v1, p2

    invoke-static/range {v0 .. v8}, Lcom/transsion/postdetail/shorttv/k;->d(Lcom/transsion/postdetail/shorttv/k;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    iget-object p1, p0, Lcom/transsion/postdetail/ui/view/ShortTvImmVideoItemView;->f:Lcom/transsion/moviedetailapi/bean/Subject;

    if-eqz p1, :cond_2

    iget-object p0, p0, Lcom/transsion/postdetail/ui/view/ShortTvImmVideoItemView;->d:Lcom/transsion/postdetail/shorttv/ShortTvPlayListViewModel;

    if-eqz p0, :cond_2

    invoke-virtual {p0, p1}, Lcom/transsion/postdetail/shorttv/ShortTvPlayListViewModel;->d(Lcom/transsion/moviedetailapi/bean/Subject;)V

    :cond_2
    return-void
.end method

.method private static final C(Lcom/transsion/postdetail/ui/view/ShortTvImmVideoItemView;Luy/c;)Lkotlin/Unit;
    .locals 4

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p1}, Luy/c;->c()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/transsion/postdetail/ui/view/ShortTvImmVideoItemView;->f:Lcom/transsion/moviedetailapi/bean/Subject;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/transsion/moviedetailapi/bean/Subject;->getSubjectId()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_0
    move-object v2, v0

    :goto_0
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :cond_1
    iget-object v1, p0, Lcom/transsion/postdetail/ui/view/ShortTvImmVideoItemView;->f:Lcom/transsion/moviedetailapi/bean/Subject;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/transsion/moviedetailapi/bean/Subject;->getShortTVFavInfo()Lcom/transsion/moviedetailapi/bean/ShortTVFavInfo;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v1, p1}, Lcom/transsion/moviedetailapi/bean/ShortTVFavInfo;->update(Luy/c;)V

    :cond_2
    iget-object v1, p0, Lcom/transsion/postdetail/ui/view/ShortTvImmVideoItemView;->b:Lso/l0;

    iget-object v1, v1, Lso/l0;->r:Landroidx/appcompat/widget/AppCompatTextView;

    iget-object v2, p0, Lcom/transsion/postdetail/ui/view/ShortTvImmVideoItemView;->f:Lcom/transsion/moviedetailapi/bean/Subject;

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Lcom/transsion/moviedetailapi/bean/Subject;->getShortTVFavInfo()Lcom/transsion/moviedetailapi/bean/ShortTVFavInfo;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Lcom/transsion/moviedetailapi/bean/ShortTVFavInfo;->getFavoriteNum()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_4

    :cond_3
    const-string v2, "0"

    :cond_4
    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/transsion/baseui/util/j;->a(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p0, p0, Lcom/transsion/postdetail/ui/view/ShortTvImmVideoItemView;->b:Lso/l0;

    iget-object p0, p0, Lso/l0;->r:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {p1}, Luy/c;->a()Z

    move-result p1

    invoke-virtual {p0, p1}, Landroid/view/View;->setSelected(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    sget-object p0, Llg/a;->a:Llg/a$a;

    const/4 p1, 0x0

    const/4 v1, 0x2

    const-string v2, " callback change data fail"

    invoke-static {p0, v2, p1, v1, v0}, Llg/a$a;->g(Llg/a$a;Ljava/lang/String;ZILjava/lang/Object;)V

    :goto_1
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method

.method private final D(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V
    .locals 5

    if-eqz p1, :cond_5

    if-eqz p3, :cond_5

    if-eqz p2, :cond_5

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/transsion/postdetail/ui/view/ShortTvImmVideoItemView;->b:Lso/l0;

    iget-object v0, v0, Lso/l0;->d:Landroid/widget/FrameLayout;

    const-string v1, "flContainer"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    if-eqz v1, :cond_4

    check-cast v1, Landroidx/constraintlayout/widget/ConstraintLayout$b;

    invoke-static {}, Lcom/blankj/utilcode/util/y;->e()I

    move-result v2

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    mul-int/2addr v3, v2

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    div-int/2addr v3, v2

    const/4 v2, 0x1

    invoke-static {v2, v3}, Lkotlin/ranges/RangesKt;->t(II)Lkotlin/ranges/IntRange;

    move-result-object v2

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v2, v4}, Lkotlin/ranges/IntRange;->o(I)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    mul-int/2addr v2, p1

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    div-int/2addr v2, p1

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/blankj/utilcode/util/y;->e()I

    move-result v2

    :goto_0
    iget p1, v1, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    if-ne v2, p1, :cond_2

    iget p1, v1, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    if-eq v3, p1, :cond_3

    :cond_2
    iput v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    iput v3, v1, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    :cond_3
    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void

    :cond_4
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "null cannot be cast to non-null type androidx.constraintlayout.widget.ConstraintLayout.LayoutParams"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_5
    :goto_1
    return-void
.end method

.method static synthetic E(Lcom/transsion/postdetail/ui/view/ShortTvImmVideoItemView;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    iget-object p3, p0, Lcom/transsion/postdetail/ui/view/ShortTvImmVideoItemView;->b:Lso/l0;

    invoke-virtual {p3}, Lso/l0;->getRoot()Landroid/view/View;

    move-result-object p3

    invoke-virtual {p3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p3

    check-cast p3, Landroid/view/ViewGroup;

    if-eqz p3, :cond_0

    invoke-virtual {p3}, Landroid/view/View;->getHeight()I

    move-result p3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    goto :goto_0

    :cond_0
    const/4 p3, 0x0

    :cond_1
    :goto_0
    invoke-direct {p0, p1, p2, p3}, Lcom/transsion/postdetail/ui/view/ShortTvImmVideoItemView;->D(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V

    return-void
.end method

.method private final F(Lcom/transsion/moviedetailapi/bean/Subject;)V
    .locals 13

    invoke-virtual {p1}, Lcom/transsion/moviedetailapi/bean/Subject;->getBuiltIn()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lkotlinx/coroutines/y0;->c()Lkotlinx/coroutines/a2;

    move-result-object v0

    invoke-static {v0}, Lkotlinx/coroutines/o0;->a(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/n0;

    move-result-object v1

    new-instance v4, Lcom/transsion/postdetail/ui/view/ShortTvImmVideoItemView$updateVideoInfo$1;

    const/4 v0, 0x0

    invoke-direct {v4, p1, p0, v0}, Lcom/transsion/postdetail/ui/view/ShortTvImmVideoItemView$updateVideoInfo$1;-><init>(Lcom/transsion/moviedetailapi/bean/Subject;Lcom/transsion/postdetail/ui/view/ShortTvImmVideoItemView;Lkotlin/coroutines/Continuation;)V

    const/4 v5, 0x3

    const/4 v6, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    sget-object v7, Llg/a;->a:Llg/a$a;

    iget-object v8, p0, Lcom/transsion/postdetail/ui/view/ShortTvImmVideoItemView;->a:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/transsion/moviedetailapi/bean/Subject;->getShortTVFirstEp()Lcom/transsion/moviedetailapi/bean/ShortTVItem;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/transsion/moviedetailapi/bean/ShortTVItem;->getVideo()Lcom/transsion/moviedetailapi/bean/Media;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/transsion/moviedetailapi/bean/Media;->getCover()Lcom/transsion/moviedetailapi/bean/Cover;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/transsion/moviedetailapi/bean/Cover;->getUrl()Ljava/lang/String;

    move-result-object v0

    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "set info - cover = "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const/4 v11, 0x4

    const/4 v12, 0x0

    const/4 v10, 0x0

    invoke-static/range {v7 .. v12}, Llg/a$a;->f(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lcom/transsion/moviedetailapi/bean/Subject;->getShortTVFirstEp()Lcom/transsion/moviedetailapi/bean/ShortTVItem;

    move-result-object p1

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Lcom/transsion/moviedetailapi/bean/ShortTVItem;->getVideo()Lcom/transsion/moviedetailapi/bean/Media;

    move-result-object p1

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Lcom/transsion/moviedetailapi/bean/Media;->getCover()Lcom/transsion/moviedetailapi/bean/Cover;

    move-result-object p1

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Lcom/transsion/moviedetailapi/bean/Cover;->getUrl()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_4

    iget-object p1, p0, Lcom/transsion/postdetail/ui/view/ShortTvImmVideoItemView;->g:Landroidx/fragment/app/Fragment;

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_3

    goto :goto_0

    :cond_3
    sget-object v0, Lej/f;->a:Lej/f$a;

    sget-object v2, Ljn/b;->e:Ljn/b$a;

    invoke-virtual {v2}, Ljn/b$a;->a()I

    move-result v2

    const/16 v5, 0xc

    const/4 v6, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static/range {v0 .. v6}, Lej/f$a;->e(Lej/f$a;Ljava/lang/String;IZZILjava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1}, Lcom/bumptech/glide/Glide;->with(Landroidx/fragment/app/FragmentActivity;)Lcom/bumptech/glide/RequestManager;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p1

    iget-object v0, p0, Lcom/transsion/postdetail/ui/view/ShortTvImmVideoItemView;->b:Lso/l0;

    iget-object v0, v0, Lso/l0;->f:Landroidx/appcompat/widget/AppCompatImageView;

    invoke-virtual {p1, v0}, Lcom/bumptech/glide/RequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    :cond_4
    :goto_0
    return-void
.end method

.method public static final synthetic access$favoriteResultToast(Lcom/transsion/postdetail/ui/view/ShortTvImmVideoItemView;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/transsion/postdetail/ui/view/ShortTvImmVideoItemView;->n(Ljava/lang/String;)V

    return-void
.end method

.method public static final synthetic access$finishAfterReport(Lcom/transsion/postdetail/ui/view/ShortTvImmVideoItemView;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/transsion/postdetail/ui/view/ShortTvImmVideoItemView;->o(Ljava/lang/String;)V

    return-void
.end method

.method public static final synthetic access$getData$p(Lcom/transsion/postdetail/ui/view/ShortTvImmVideoItemView;)Lcom/transsion/moviedetailapi/bean/Subject;
    .locals 0

    iget-object p0, p0, Lcom/transsion/postdetail/ui/view/ShortTvImmVideoItemView;->f:Lcom/transsion/moviedetailapi/bean/Subject;

    return-object p0
.end method

.method public static final synthetic access$getOrPlayer$p(Lcom/transsion/postdetail/ui/view/ShortTvImmVideoItemView;)Lcom/transsion/player/orplayer/g;
    .locals 0

    iget-object p0, p0, Lcom/transsion/postdetail/ui/view/ShortTvImmVideoItemView;->k:Lcom/transsion/player/orplayer/g;

    return-object p0
.end method

.method public static final synthetic access$getPagerLayoutManager$p(Lcom/transsion/postdetail/ui/view/ShortTvImmVideoItemView;)Lcom/transsion/shorttv/base/pager/PagerLayoutManager;
    .locals 0

    iget-object p0, p0, Lcom/transsion/postdetail/ui/view/ShortTvImmVideoItemView;->m:Lcom/transsion/shorttv/base/pager/PagerLayoutManager;

    return-object p0
.end method

.method public static final synthetic access$getViewBinding$p(Lcom/transsion/postdetail/ui/view/ShortTvImmVideoItemView;)Lso/l0;
    .locals 0

    iget-object p0, p0, Lcom/transsion/postdetail/ui/view/ShortTvImmVideoItemView;->b:Lso/l0;

    return-object p0
.end method

.method public static final synthetic access$isHorizontalDragging$p(Lcom/transsion/postdetail/ui/view/ShortTvImmVideoItemView;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/transsion/postdetail/ui/view/ShortTvImmVideoItemView;->s:Z

    return p0
.end method

.method public static final synthetic access$isSeekToFinish$p(Lcom/transsion/postdetail/ui/view/ShortTvImmVideoItemView;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    iget-object p0, p0, Lcom/transsion/postdetail/ui/view/ShortTvImmVideoItemView;->C:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method

.method public static final synthetic access$onSingleClick(Lcom/transsion/postdetail/ui/view/ShortTvImmVideoItemView;)V
    .locals 0

    invoke-direct {p0}, Lcom/transsion/postdetail/ui/view/ShortTvImmVideoItemView;->w()V

    return-void
.end method

.method public static final synthetic access$setContentVisibility(Lcom/transsion/postdetail/ui/view/ShortTvImmVideoItemView;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/transsion/postdetail/ui/view/ShortTvImmVideoItemView;->setContentVisibility(Z)V

    return-void
.end method

.method public static final synthetic access$setHorizontalDragging$p(Lcom/transsion/postdetail/ui/view/ShortTvImmVideoItemView;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/transsion/postdetail/ui/view/ShortTvImmVideoItemView;->s:Z

    return-void
.end method

.method public static final synthetic access$setNextSeekTo$p(Lcom/transsion/postdetail/ui/view/ShortTvImmVideoItemView;J)V
    .locals 0

    iput-wide p1, p0, Lcom/transsion/postdetail/ui/view/ShortTvImmVideoItemView;->D:J

    return-void
.end method

.method private final getLoginApi()Lcom/transsnet/loginapi/ILoginApi;
    .locals 1

    iget-object v0, p0, Lcom/transsion/postdetail/ui/view/ShortTvImmVideoItemView;->p:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsnet/loginapi/ILoginApi;

    return-object v0
.end method

.method public static synthetic h(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/postdetail/ui/view/ShortTvImmVideoItemView;->r(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public static synthetic i(Lcom/transsion/postdetail/ui/view/ShortTvImmVideoItemView;)V
    .locals 0

    invoke-static {p0}, Lcom/transsion/postdetail/ui/view/ShortTvImmVideoItemView;->u(Lcom/transsion/postdetail/ui/view/ShortTvImmVideoItemView;)V

    return-void
.end method

.method public static synthetic j(Lcom/transsion/postdetail/ui/view/ShortTvImmVideoItemView;Luy/c;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/postdetail/ui/view/ShortTvImmVideoItemView;->C(Lcom/transsion/postdetail/ui/view/ShortTvImmVideoItemView;Luy/c;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic k(Lcom/transsion/postdetail/ui/view/ShortTvImmVideoItemView;Lkotlin/jvm/internal/Ref$ObjectRef;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/transsion/postdetail/ui/view/ShortTvImmVideoItemView;->B(Lcom/transsion/postdetail/ui/view/ShortTvImmVideoItemView;Lkotlin/jvm/internal/Ref$ObjectRef;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic l()Lcom/transsnet/loginapi/ILoginApi;
    .locals 1

    invoke-static {}, Lcom/transsion/postdetail/ui/view/ShortTvImmVideoItemView;->s()Lcom/transsnet/loginapi/ILoginApi;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic m(Lcom/transsion/postdetail/ui/view/ShortTvImmVideoItemView;)V
    .locals 0

    invoke-static {p0}, Lcom/transsion/postdetail/ui/view/ShortTvImmVideoItemView;->x(Lcom/transsion/postdetail/ui/view/ShortTvImmVideoItemView;)V

    return-void
.end method

.method private final n(Ljava/lang/String;)V
    .locals 2

    if-eqz p1, :cond_6

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const v1, -0x5c646583

    if-eq v0, v1, :cond_4

    const v1, -0x344d981f    # -2.3384002E7f

    if-eq v0, v1, :cond_2

    const v1, 0x1f58437e

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "favorite_add"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    sget p1, Lcom/transsnet/downloader/R$string;->short_tv_favorite_toast:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    goto :goto_1

    :cond_2
    const-string v0, "favorite_fail"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    goto :goto_0

    :cond_3
    sget p1, Lcom/tn/lib/widget/R$string;->failed_toast:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    goto :goto_1

    :cond_4
    const-string v0, "favorite_cancel"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    goto :goto_0

    :cond_5
    sget p1, Lcom/transsnet/downloader/R$string;->short_tv_favorite_remove_toast:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    goto :goto_1

    :cond_6
    :goto_0
    const/4 p1, 0x0

    :goto_1
    if-eqz p1, :cond_7

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    sget-object v0, Luh/b;->a:Luh/b$a;

    invoke-virtual {v0, p1}, Luh/b$a;->d(I)V

    :cond_7
    return-void
.end method

.method private final o(Ljava/lang/String;)V
    .locals 6

    sget-object v0, Llg/a;->a:Llg/a$a;

    iget-object v1, p0, Lcom/transsion/postdetail/ui/view/ShortTvImmVideoItemView;->a:Ljava/lang/String;

    iget-object p1, p0, Lcom/transsion/postdetail/ui/view/ShortTvImmVideoItemView;->i:Ljava/lang/Integer;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "finishAfterReport, position = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x4

    const/4 v5, 0x0

    const/4 v3, 0x0

    invoke-static/range {v0 .. v5}, Llg/a$a;->r(Llg/a$a;Ljava/lang/String;[Ljava/lang/String;ZILjava/lang/Object;)V

    iget-object p1, p0, Lcom/transsion/postdetail/ui/view/ShortTvImmVideoItemView;->c:Lcom/transsion/postdetail/viewmodel/x;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/transsion/postdetail/viewmodel/x;->o()Landroidx/lifecycle/b0;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/transsion/postdetail/ui/view/ShortTvImmVideoItemView;->i:Ljava/lang/Integer;

    invoke-virtual {p1, v0}, Landroidx/lifecycle/b0;->q(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method private final p(Landroid/content/Context;)V
    .locals 2

    new-instance v0, Landroid/view/GestureDetector;

    new-instance v1, Lcom/transsion/postdetail/ui/view/ShortTvImmVideoItemView$c;

    invoke-direct {v1, p0}, Lcom/transsion/postdetail/ui/view/ShortTvImmVideoItemView$c;-><init>(Lcom/transsion/postdetail/ui/view/ShortTvImmVideoItemView;)V

    invoke-direct {v0, p1, v1}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/transsion/postdetail/ui/view/ShortTvImmVideoItemView;->o:Landroid/view/GestureDetector;

    invoke-direct {p0}, Lcom/transsion/postdetail/ui/view/ShortTvImmVideoItemView;->q()V

    return-void
.end method

.method private final q()V
    .locals 3

    new-instance v0, Lcom/transsion/baseui/widget/f;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/transsion/postdetail/ui/view/ShortTvImmVideoItemView;->b:Lso/l0;

    iget-object v2, v2, Lso/l0;->x:Lcom/transsion/postdetail/ui/view/VideoProgressDragGestureView;

    invoke-direct {v0, v1, v2}, Lcom/transsion/baseui/widget/f;-><init>(Landroid/content/Context;Landroid/view/View;)V

    new-instance v1, Lcom/transsion/postdetail/ui/view/ShortTvImmVideoItemView$d;

    invoke-direct {v1, p0}, Lcom/transsion/postdetail/ui/view/ShortTvImmVideoItemView$d;-><init>(Lcom/transsion/postdetail/ui/view/ShortTvImmVideoItemView;)V

    invoke-virtual {v0, v1}, Lcom/transsion/baseui/widget/f;->s(Lcom/transsion/baseui/widget/f$a;)V

    iget-object v0, p0, Lcom/transsion/postdetail/ui/view/ShortTvImmVideoItemView;->b:Lso/l0;

    iget-object v0, v0, Lso/l0;->o:Landroidx/appcompat/widget/AppCompatSeekBar;

    new-instance v1, Lcom/transsion/postdetail/ui/view/d2;

    invoke-direct {v1}, Lcom/transsion/postdetail/ui/view/d2;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method

.method private static final r(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method private static final s()Lcom/transsnet/loginapi/ILoginApi;
    .locals 2

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-class v1, Lcom/transsnet/loginapi/ILoginApi;

    invoke-static {v1, v0}, Lcom/therouter/TheRouter;->d(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsnet/loginapi/ILoginApi;

    return-object v0
.end method

.method private final setContentVisibility(Z)V
    .locals 2

    iget-object v0, p0, Lcom/transsion/postdetail/ui/view/ShortTvImmVideoItemView;->b:Lso/l0;

    iget-object v0, v0, Lso/l0;->e:Landroidx/constraintlayout/widget/Group;

    const-string v1, "groupContent"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    :goto_0
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public static synthetic setData$default(Lcom/transsion/postdetail/ui/view/ShortTvImmVideoItemView;Lcom/transsion/moviedetailapi/bean/Subject;Landroidx/fragment/app/Fragment;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V
    .locals 7

    and-int/lit8 p7, p7, 0x20

    if-eqz p7, :cond_0

    const/4 p6, 0x0

    :cond_0
    move v6, p6

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v6}, Lcom/transsion/postdetail/ui/view/ShortTvImmVideoItemView;->setData(Lcom/transsion/moviedetailapi/bean/Subject;Landroidx/fragment/app/Fragment;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method private final setLoading(Z)V
    .locals 6

    sget-object v0, Llg/a;->a:Llg/a$a;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setLoading:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, "  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x4

    const/4 v5, 0x0

    const-string v1, "yy"

    const/4 v3, 0x0

    invoke-static/range {v0 .. v5}, Llg/a$a;->l(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    const-string v0, "progressBar"

    const-string v1, "clLoading"

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/transsion/postdetail/ui/view/ShortTvImmVideoItemView;->b:Lso/l0;

    iget-object p1, p1, Lso/l0;->c:Lcom/transsion/postdetail/ui/view/ClipLoading;

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Ljg/c;->k(Landroid/view/View;)V

    iget-object p1, p0, Lcom/transsion/postdetail/ui/view/ShortTvImmVideoItemView;->b:Lso/l0;

    iget-object p1, p1, Lso/l0;->m:Landroid/widget/ProgressBar;

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Ljg/c;->g(Landroid/view/View;)V

    iget-object p1, p0, Lcom/transsion/postdetail/ui/view/ShortTvImmVideoItemView;->b:Lso/l0;

    iget-object p1, p1, Lso/l0;->c:Lcom/transsion/postdetail/ui/view/ClipLoading;

    invoke-virtual {p1}, Lcom/transsion/postdetail/ui/view/ClipLoading;->start()V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/transsion/postdetail/ui/view/ShortTvImmVideoItemView;->b:Lso/l0;

    iget-object p1, p1, Lso/l0;->m:Landroid/widget/ProgressBar;

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Ljg/c;->k(Landroid/view/View;)V

    iget-object p1, p0, Lcom/transsion/postdetail/ui/view/ShortTvImmVideoItemView;->b:Lso/l0;

    iget-object p1, p1, Lso/l0;->c:Lcom/transsion/postdetail/ui/view/ClipLoading;

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Ljg/c;->g(Landroid/view/View;)V

    iget-object p1, p0, Lcom/transsion/postdetail/ui/view/ShortTvImmVideoItemView;->b:Lso/l0;

    iget-object p1, p1, Lso/l0;->c:Lcom/transsion/postdetail/ui/view/ClipLoading;

    invoke-virtual {p1}, Lcom/transsion/postdetail/ui/view/ClipLoading;->stop()V

    :goto_0
    return-void
.end method

.method private final t(J)V
    .locals 3

    iget-object v0, p0, Lcom/transsion/postdetail/ui/view/ShortTvImmVideoItemView;->h:Ljava/lang/Boolean;

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/transsion/postdetail/helper/ShortTvImmVideoHelper;->k:Lcom/transsion/postdetail/helper/ShortTvImmVideoHelper$a;

    invoke-virtual {v0}, Lcom/transsion/postdetail/helper/ShortTvImmVideoHelper$a;->a()Lcom/transsion/postdetail/helper/ShortTvImmVideoHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/transsion/postdetail/helper/ShortTvImmVideoHelper;->s()Z

    move-result v1

    if-eqz v1, :cond_0

    const-wide/16 v1, 0x3e8

    cmp-long p1, p1, v1

    if-ltz p1, :cond_0

    invoke-virtual {v0}, Lcom/transsion/postdetail/helper/ShortTvImmVideoHelper$a;->a()Lcom/transsion/postdetail/helper/ShortTvImmVideoHelper;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transsion/postdetail/helper/ShortTvImmVideoHelper;->A()V

    sget-object p1, Lcom/transsion/postdetail/ui/view/ImmVideoGuideView;->Companion:Lcom/transsion/postdetail/ui/view/ImmVideoGuideView$a;

    invoke-virtual {p1, p0}, Lcom/transsion/postdetail/ui/view/ImmVideoGuideView$a;->a(Landroid/view/ViewGroup;)Lcom/transsion/postdetail/ui/view/ImmVideoGuideView;

    move-result-object p1

    new-instance p2, Lcom/transsion/postdetail/ui/view/c2;

    invoke-direct {p2, p0}, Lcom/transsion/postdetail/ui/view/c2;-><init>(Lcom/transsion/postdetail/ui/view/ShortTvImmVideoItemView;)V

    const-wide/16 v0, 0x1388

    invoke-virtual {p1, p2, v0, v1}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    iput-object p1, p0, Lcom/transsion/postdetail/ui/view/ShortTvImmVideoItemView;->n:Lcom/transsion/postdetail/ui/view/ImmVideoGuideView;

    :cond_0
    return-void
.end method

.method private static final u(Lcom/transsion/postdetail/ui/view/ShortTvImmVideoItemView;)V
    .locals 0

    iget-object p0, p0, Lcom/transsion/postdetail/ui/view/ShortTvImmVideoItemView;->n:Lcom/transsion/postdetail/ui/view/ImmVideoGuideView;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/transsion/postdetail/ui/view/ImmVideoGuideView;->removeGuide()V

    :cond_0
    return-void
.end method

.method private final v(Landroid/view/View;)V
    .locals 16

    move-object/from16 v1, p0

    const-string v0, "share"

    sget-object v2, Lcom/transsion/baseui/util/c;->a:Lcom/transsion/baseui/util/c;

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getId()I

    move-result v3

    const-wide/16 v4, 0x1f4

    invoke-virtual {v2, v3, v4, v5}, Lcom/transsion/baseui/util/c;->a(IJ)Z

    move-result v2

    if-eqz v2, :cond_0

    return-void

    :cond_0
    iget-object v2, v1, Lcom/transsion/postdetail/ui/view/ShortTvImmVideoItemView;->e:Lcom/transsion/share/share/ShareDialogFragment;

    if-nez v2, :cond_5

    invoke-direct/range {p0 .. p0}, Lcom/transsion/postdetail/ui/view/ShortTvImmVideoItemView;->getLoginApi()Lcom/transsnet/loginapi/ILoginApi;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-interface {v2}, Lcom/transsnet/loginapi/ILoginApi;->i()Lcom/transsnet/loginapi/bean/UserInfo;

    :cond_1
    sget-object v3, Lcom/transsion/share/share/ShareDialogFragment;->s:Lcom/transsion/share/share/ShareDialogFragment$a;

    sget-object v4, Lcom/transsion/share/bean/PostType;->SHORT_TV_TYPE:Lcom/transsion/share/bean/PostType;

    iget-object v2, v1, Lcom/transsion/postdetail/ui/view/ShortTvImmVideoItemView;->f:Lcom/transsion/moviedetailapi/bean/Subject;

    const/4 v5, 0x0

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Lcom/transsion/moviedetailapi/bean/Subject;->getSubjectId()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_2
    move-object v2, v5

    :goto_0
    sget-object v6, Lcom/transsion/usercenterapi/ReportType;->SUBJECT:Lcom/transsion/usercenterapi/ReportType;

    invoke-virtual {v6}, Lcom/transsion/usercenterapi/ReportType;->getValue()Ljava/lang/String;

    move-result-object v7

    iget-object v6, v1, Lcom/transsion/postdetail/ui/view/ShortTvImmVideoItemView;->f:Lcom/transsion/moviedetailapi/bean/Subject;

    if-eqz v6, :cond_3

    invoke-virtual {v6}, Lcom/transsion/moviedetailapi/bean/Subject;->getTitle()Ljava/lang/String;

    move-result-object v6

    move-object v8, v6

    goto :goto_1

    :cond_3
    move-object v8, v5

    :goto_1
    iget-object v6, v1, Lcom/transsion/postdetail/ui/view/ShortTvImmVideoItemView;->f:Lcom/transsion/moviedetailapi/bean/Subject;

    if-eqz v6, :cond_4

    invoke-virtual {v6}, Lcom/transsion/moviedetailapi/bean/Subject;->getOps()Ljava/lang/String;

    move-result-object v5

    :cond_4
    move-object v14, v5

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    sget v6, Lcom/transsion/postdetail/R$string;->save_video:I

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v15

    const-string v6, ""

    const-string v9, ""

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const-string v13, "postdetail"

    move-object v5, v2

    invoke-virtual/range {v3 .. v15}, Lcom/transsion/share/share/ShareDialogFragment$a;->a(Lcom/transsion/share/bean/PostType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/share/share/ShareDialogFragment;

    move-result-object v2

    iput-object v2, v1, Lcom/transsion/postdetail/ui/view/ShortTvImmVideoItemView;->e:Lcom/transsion/share/share/ShareDialogFragment;

    if-eqz v2, :cond_5

    new-instance v3, Lcom/transsion/postdetail/ui/view/ShortTvImmVideoItemView$e;

    invoke-direct {v3, v1}, Lcom/transsion/postdetail/ui/view/ShortTvImmVideoItemView$e;-><init>(Lcom/transsion/postdetail/ui/view/ShortTvImmVideoItemView;)V

    invoke-virtual {v2, v3}, Lcom/transsion/share/share/ShareDialogFragment;->G0(Lcom/transsion/share/share/a;)V

    :cond_5
    :try_start_0
    iget-object v2, v1, Lcom/transsion/postdetail/ui/view/ShortTvImmVideoItemView;->g:Landroidx/fragment/app/Fragment;

    if-eqz v2, :cond_8

    invoke-virtual {v2}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_8

    iget-object v2, v1, Lcom/transsion/postdetail/ui/view/ShortTvImmVideoItemView;->g:Landroidx/fragment/app/Fragment;

    if-eqz v2, :cond_8

    invoke-virtual {v2}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v2

    if-eqz v2, :cond_8

    invoke-virtual {v2}, Landroidx/fragment/app/FragmentManager;->g0()Z

    iget-object v4, v1, Lcom/transsion/postdetail/ui/view/ShortTvImmVideoItemView;->e:Lcom/transsion/share/share/ShareDialogFragment;

    if-eqz v4, :cond_6

    invoke-virtual {v4}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v4

    if-ne v4, v3, :cond_6

    goto :goto_2

    :catch_0
    move-exception v0

    goto :goto_3

    :cond_6
    invoke-virtual {v2, v0}, Landroidx/fragment/app/FragmentManager;->k0(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v3

    if-eqz v3, :cond_7

    :goto_2
    return-void

    :cond_7
    iget-object v3, v1, Lcom/transsion/postdetail/ui/view/ShortTvImmVideoItemView;->e:Lcom/transsion/share/share/ShareDialogFragment;

    if-eqz v3, :cond_8

    invoke-virtual {v3, v2, v0}, Landroidx/fragment/app/DialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    :goto_3
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_8
    :goto_4
    return-void
.end method

.method private final w()V
    .locals 2

    iget-object v0, p0, Lcom/transsion/postdetail/ui/view/ShortTvImmVideoItemView;->b:Lso/l0;

    iget-object v0, v0, Lso/l0;->c:Lcom/transsion/postdetail/ui/view/ClipLoading;

    const-string v1, "clLoading"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/transsion/postdetail/ui/view/ShortTvImmVideoItemView;->k:Lcom/transsion/player/orplayer/g;

    if-eqz v0, :cond_3

    invoke-interface {v0}, Lcom/transsion/player/orplayer/g;->isPlaying()Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_3

    iget-object v0, p0, Lcom/transsion/postdetail/ui/view/ShortTvImmVideoItemView;->q:Lcom/transsion/postdetail/layer/b;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/transsion/postdetail/layer/b;->b()V

    :cond_1
    iget-object v0, p0, Lcom/transsion/postdetail/ui/view/ShortTvImmVideoItemView;->k:Lcom/transsion/player/orplayer/g;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Lcom/transsion/player/orplayer/g;->pause()V

    :cond_2
    iput-boolean v1, p0, Lcom/transsion/postdetail/ui/view/ShortTvImmVideoItemView;->r:Z

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/transsion/postdetail/ui/view/ShortTvImmVideoItemView;->q:Lcom/transsion/postdetail/layer/b;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/transsion/postdetail/layer/b;->c()V

    :cond_4
    iget-object v0, p0, Lcom/transsion/postdetail/ui/view/ShortTvImmVideoItemView;->k:Lcom/transsion/player/orplayer/g;

    if-eqz v0, :cond_5

    invoke-interface {v0}, Lcom/transsion/player/orplayer/g;->play()V

    :cond_5
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/transsion/postdetail/ui/view/ShortTvImmVideoItemView;->r:Z

    :goto_0
    return-void
.end method

.method private static final x(Lcom/transsion/postdetail/ui/view/ShortTvImmVideoItemView;)V
    .locals 2

    iget-object v0, p0, Lcom/transsion/postdetail/ui/view/ShortTvImmVideoItemView;->g:Landroidx/fragment/app/Fragment;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->isVisible()Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object p0, p0, Lcom/transsion/postdetail/ui/view/ShortTvImmVideoItemView;->k:Lcom/transsion/player/orplayer/g;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/transsion/player/orplayer/g;->play()V

    :cond_0
    return-void
.end method

.method private static final y(Lkotlin/Lazy;)Lcom/transsion/postdetail/viewmodel/x;
    .locals 0

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/transsion/postdetail/viewmodel/x;

    return-object p0
.end method

.method private static final z(Lkotlin/Lazy;)Lcom/transsion/postdetail/shorttv/ShortTvPlayListViewModel;
    .locals 0

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/transsion/postdetail/shorttv/ShortTvPlayListViewModel;

    return-object p0
.end method


# virtual methods
.method public final addVideoView(Landroid/view/View;Lcom/transsion/moviedetailapi/bean/Video;I)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    :cond_0
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    iget-object v1, p0, Lcom/transsion/postdetail/ui/view/ShortTvImmVideoItemView;->b:Lso/l0;

    iget-object v1, v1, Lso/l0;->d:Landroid/widget/FrameLayout;

    invoke-virtual {v1, p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Lcom/transsion/moviedetailapi/bean/Video;->getWidth()Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p2}, Lcom/transsion/moviedetailapi/bean/Video;->getHeight()Ljava/lang/Integer;

    move-result-object p2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-direct {p0, p1, p2, p3}, Lcom/transsion/postdetail/ui/view/ShortTvImmVideoItemView;->D(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V

    :cond_1
    return-void
.end method

.method public final app2Background()V
    .locals 2

    iget-object v0, p0, Lcom/transsion/postdetail/ui/view/ShortTvImmVideoItemView;->q:Lcom/transsion/postdetail/layer/b;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/transsion/postdetail/layer/b;->d(Z)V

    :cond_0
    return-void
.end method

.method public canNonSubscriberPlay(ZIILmo/d;)V
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lcom/transsion/player/orplayer/f$a;->a(Lcom/transsion/player/orplayer/f;ZIILmo/d;)V

    return-void
.end method

.method public final getPosition()Ljava/lang/Integer;
    .locals 1

    iget-object v0, p0, Lcom/transsion/postdetail/ui/view/ShortTvImmVideoItemView;->i:Ljava/lang/Integer;

    return-object v0
.end method

.method public initPlayer()V
    .locals 0

    invoke-static {p0}, Lcom/transsion/player/orplayer/f$a;->b(Lcom/transsion/player/orplayer/f;)V

    return-void
.end method

.method public onAliyunDecodeErrorChangeSoftwareDecoder(Lao/e;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/player/orplayer/f$a;->c(Lcom/transsion/player/orplayer/f;Lao/e;)V

    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 3

    invoke-super {p0}, Landroid/view/ViewGroup;->onAttachedToWindow()V

    iget-object v0, p0, Lcom/transsion/postdetail/ui/view/ShortTvImmVideoItemView;->g:Landroidx/fragment/app/Fragment;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Landroidx/lifecycle/u;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/transsion/postdetail/ui/view/ShortTvImmVideoItemView;->G:Lcom/transsion/postdetail/ui/view/ShortTvImmVideoItemView$b;

    iget-object v2, p0, Lcom/transsion/postdetail/ui/view/ShortTvImmVideoItemView;->d:Lcom/transsion/postdetail/shorttv/ShortTvPlayListViewModel;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/transsion/postdetail/shorttv/ShortTvPlayListViewModel;->f()Landroidx/lifecycle/b0;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroidx/lifecycle/LiveData;->f()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v1, v2}, Lcom/transsion/postdetail/ui/view/ShortTvImmVideoItemView$b;->b(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/transsion/postdetail/ui/view/ShortTvImmVideoItemView;->d:Lcom/transsion/postdetail/shorttv/ShortTvPlayListViewModel;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/transsion/postdetail/shorttv/ShortTvPlayListViewModel;->f()Landroidx/lifecycle/b0;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v2, p0, Lcom/transsion/postdetail/ui/view/ShortTvImmVideoItemView;->G:Lcom/transsion/postdetail/ui/view/ShortTvImmVideoItemView$b;

    invoke-virtual {v1, v0, v2}, Landroidx/lifecycle/LiveData;->j(Landroidx/lifecycle/u;Landroidx/lifecycle/c0;)V

    :cond_1
    return-void
.end method

.method public onBufferedPosition(JLao/e;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/transsion/player/orplayer/f$a;->d(Lcom/transsion/player/orplayer/f;JLao/e;)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 14

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v0

    :goto_0
    sget v2, Lcom/transsion/postdetail/R$id;->iv_share:I

    if-nez v1, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-ne v3, v2, :cond_2

    invoke-direct {p0, p1}, Lcom/transsion/postdetail/ui/view/ShortTvImmVideoItemView;->v(Landroid/view/View;)V

    goto/16 :goto_7

    :cond_2
    :goto_1
    sget v2, Lcom/transsion/postdetail/R$id;->tv_short_tv_ep:I

    if-nez v1, :cond_3

    goto :goto_2

    :cond_3
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-ne v3, v2, :cond_4

    iget-object p1, p0, Lcom/transsion/postdetail/ui/view/ShortTvImmVideoItemView;->g:Landroidx/fragment/app/Fragment;

    if-eqz p1, :cond_d

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    goto/16 :goto_7

    :cond_4
    :goto_2
    sget v2, Lcom/transsion/postdetail/R$id;->iv_download:I

    if-nez v1, :cond_5

    goto :goto_3

    :cond_5
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-eq v3, v2, :cond_9

    :goto_3
    sget v2, Lcom/transsion/postdetail/R$id;->iv_short_cover:I

    if-nez v1, :cond_6

    goto :goto_4

    :cond_6
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-eq v3, v2, :cond_9

    :goto_4
    sget v2, Lcom/transsion/postdetail/R$id;->tv_title:I

    if-nez v1, :cond_7

    goto :goto_5

    :cond_7
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-eq v3, v2, :cond_9

    :goto_5
    sget v2, Lcom/transsion/postdetail/R$id;->tv_desc:I

    if-nez v1, :cond_8

    goto :goto_7

    :cond_8
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v1, v2, :cond_d

    :cond_9
    sget-object v1, Lcom/transsnet/downloader/DownloadManagerApi;->j:Lcom/transsnet/downloader/DownloadManagerApi$a;

    invoke-virtual {v1}, Lcom/transsnet/downloader/DownloadManagerApi$a;->a()Lcom/transsnet/downloader/DownloadManagerApi;

    move-result-object v2

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v3, "null cannot be cast to non-null type androidx.fragment.app.FragmentActivity"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v3, v1

    check-cast v3, Landroidx/fragment/app/FragmentActivity;

    iget-object v1, p0, Lcom/transsion/postdetail/ui/view/ShortTvImmVideoItemView;->f:Lcom/transsion/moviedetailapi/bean/Subject;

    if-eqz v1, :cond_a

    invoke-virtual {v1}, Lcom/transsion/moviedetailapi/bean/Subject;->getOps()Ljava/lang/String;

    move-result-object v0

    :cond_a
    move-object v6, v0

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lcom/transsion/postdetail/R$id;->iv_download:I

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-ne v0, v1, :cond_b

    move v8, v5

    goto :goto_6

    :cond_b
    move v8, v4

    :goto_6
    iget-object v9, p0, Lcom/transsion/postdetail/ui/view/ShortTvImmVideoItemView;->f:Lcom/transsion/moviedetailapi/bean/Subject;

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    sget v0, Lcom/transsion/postdetail/R$id;->iv_download:I

    if-eq p1, v0, :cond_c

    move v4, v5

    :cond_c
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    const/16 v12, 0x80

    const/4 v13, 0x0

    const-string v4, "shorttv_detail_video"

    const-string v5, ""

    const-string v7, "download_subject"

    const/4 v10, 0x0

    invoke-static/range {v2 .. v13}, Lcom/transsnet/downloader/DownloadManagerApi;->e0(Lcom/transsnet/downloader/DownloadManagerApi;Landroidx/fragment/app/FragmentActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/transsion/moviedetailapi/bean/Subject;Ljava/lang/String;Ljava/lang/Boolean;ILjava/lang/Object;)V

    :cond_d
    :goto_7
    return-void
.end method

.method public onCompletion(Lao/e;)V
    .locals 6

    sget-object v0, Llg/a;->a:Llg/a$a;

    iget-object v1, p0, Lcom/transsion/postdetail/ui/view/ShortTvImmVideoItemView;->a:Ljava/lang/String;

    const-string p1, "player- onCompletion"

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x4

    const/4 v5, 0x0

    const/4 v3, 0x0

    invoke-static/range {v0 .. v5}, Llg/a$a;->r(Llg/a$a;Ljava/lang/String;[Ljava/lang/String;ZILjava/lang/Object;)V

    iget-object p1, p0, Lcom/transsion/postdetail/ui/view/ShortTvImmVideoItemView;->f:Lcom/transsion/moviedetailapi/bean/Subject;

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Lcom/transsion/moviedetailapi/bean/Subject;->getSubjectType()Ljava/lang/Integer;

    move-result-object p1

    sget-object v0, Lcom/transsion/moviedetailapi/SubjectType;->SHORT_TV:Lcom/transsion/moviedetailapi/SubjectType;

    invoke-virtual {v0}, Lcom/transsion/moviedetailapi/SubjectType;->getValue()I

    move-result v0

    if-nez p1, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-ne p1, v0, :cond_4

    iget-object p1, p0, Lcom/transsion/postdetail/ui/view/ShortTvImmVideoItemView;->g:Landroidx/fragment/app/Fragment;

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/transsion/postdetail/ui/view/ShortTvImmVideoItemView;->f:Lcom/transsion/moviedetailapi/bean/Subject;

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Lcom/transsion/moviedetailapi/bean/Subject;->getDeleted()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/transsion/postdetail/ui/view/ShortTvImmVideoItemView;->q:Lcom/transsion/postdetail/layer/b;

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/transsion/postdetail/layer/b;->d(Z)V

    :cond_1
    invoke-virtual {p1}, Lcom/transsion/moviedetailapi/bean/Subject;->getTrailer()Lcom/transsion/moviedetailapi/bean/Trailer;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/transsion/moviedetailapi/bean/Trailer;->getVideoAddress()Lcom/transsion/moviedetailapi/bean/PreVideoAddress;

    move-result-object v0

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_3

    invoke-virtual {p1}, Lcom/transsion/moviedetailapi/bean/Subject;->getShortTVFirstEp()Lcom/transsion/moviedetailapi/bean/ShortTVItem;

    move-result-object p1

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lcom/transsion/moviedetailapi/bean/ShortTVItem;->getEp()I

    :cond_3
    iget-object p1, p0, Lcom/transsion/postdetail/ui/view/ShortTvImmVideoItemView;->k:Lcom/transsion/player/orplayer/g;

    if-eqz p1, :cond_4

    const-wide/16 v0, 0x0

    invoke-interface {p1, v0, v1}, Lcom/transsion/player/orplayer/g;->seekTo(J)V

    :cond_4
    :goto_1
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    iget-object v0, p0, Lcom/transsion/postdetail/ui/view/ShortTvImmVideoItemView;->d:Lcom/transsion/postdetail/shorttv/ShortTvPlayListViewModel;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/transsion/postdetail/shorttv/ShortTvPlayListViewModel;->f()Landroidx/lifecycle/b0;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/lifecycle/b0;->q(Ljava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/transsion/postdetail/ui/view/ShortTvImmVideoItemView;->d:Lcom/transsion/postdetail/shorttv/ShortTvPlayListViewModel;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/transsion/postdetail/shorttv/ShortTvPlayListViewModel;->f()Landroidx/lifecycle/b0;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/transsion/postdetail/ui/view/ShortTvImmVideoItemView;->G:Lcom/transsion/postdetail/ui/view/ShortTvImmVideoItemView$b;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/LiveData;->o(Landroidx/lifecycle/c0;)V

    :cond_1
    return-void
.end method

.method public onFocusChange(Z)V
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/player/orplayer/f$a;->g(Lcom/transsion/player/orplayer/f;Z)V

    return-void
.end method

.method public onIsPlayingChanged(Z)V
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/player/orplayer/f$a;->h(Lcom/transsion/player/orplayer/f;Z)V

    return-void
.end method

.method public onLoadingBegin(Lao/e;)V
    .locals 0

    iget-object p1, p0, Lcom/transsion/postdetail/ui/view/ShortTvImmVideoItemView;->q:Lcom/transsion/postdetail/layer/b;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/transsion/postdetail/layer/b;->h()V

    :cond_0
    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lcom/transsion/postdetail/ui/view/ShortTvImmVideoItemView;->setLoading(Z)V

    return-void
.end method

.method public onLoadingEnd(Lao/e;)V
    .locals 0

    iget-object p1, p0, Lcom/transsion/postdetail/ui/view/ShortTvImmVideoItemView;->q:Lcom/transsion/postdetail/layer/b;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/transsion/postdetail/layer/b;->i()V

    :cond_0
    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/transsion/postdetail/ui/view/ShortTvImmVideoItemView;->setLoading(Z)V

    return-void
.end method

.method public onLoadingProgress(IFLao/e;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/transsion/player/orplayer/f$a;->m(Lcom/transsion/player/orplayer/f;IFLao/e;)V

    return-void
.end method

.method public onLoopingStart()V
    .locals 1

    iget-object v0, p0, Lcom/transsion/postdetail/ui/view/ShortTvImmVideoItemView;->q:Lcom/transsion/postdetail/layer/b;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/transsion/postdetail/layer/b;->j()V

    :cond_0
    return-void
.end method

.method public onMediaItemTransition(Ljava/lang/String;)V
    .locals 2

    invoke-static {p0, p1}, Lcom/transsion/player/orplayer/f$a;->p(Lcom/transsion/player/orplayer/f;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/transsion/postdetail/ui/view/ShortTvImmVideoItemView;->f:Lcom/transsion/moviedetailapi/bean/Subject;

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Lcom/transsion/moviedetailapi/bean/Subject;->getSubjectType()Ljava/lang/Integer;

    move-result-object p1

    sget-object v0, Lcom/transsion/moviedetailapi/SubjectType;->SHORT_TV:Lcom/transsion/moviedetailapi/SubjectType;

    invoke-virtual {v0}, Lcom/transsion/moviedetailapi/SubjectType;->getValue()I

    move-result v0

    if-nez p1, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-ne p1, v0, :cond_4

    iget-object p1, p0, Lcom/transsion/postdetail/ui/view/ShortTvImmVideoItemView;->g:Landroidx/fragment/app/Fragment;

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/transsion/postdetail/ui/view/ShortTvImmVideoItemView;->f:Lcom/transsion/moviedetailapi/bean/Subject;

    if-eqz p1, :cond_4

    iget-object v0, p0, Lcom/transsion/postdetail/ui/view/ShortTvImmVideoItemView;->q:Lcom/transsion/postdetail/layer/b;

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/transsion/postdetail/layer/b;->d(Z)V

    :cond_1
    invoke-virtual {p1}, Lcom/transsion/moviedetailapi/bean/Subject;->getTrailer()Lcom/transsion/moviedetailapi/bean/Trailer;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/transsion/moviedetailapi/bean/Trailer;->getVideoAddress()Lcom/transsion/moviedetailapi/bean/PreVideoAddress;

    move-result-object v0

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_3

    invoke-virtual {p1}, Lcom/transsion/moviedetailapi/bean/Subject;->getShortTVFirstEp()Lcom/transsion/moviedetailapi/bean/ShortTVItem;

    move-result-object p1

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lcom/transsion/moviedetailapi/bean/ShortTVItem;->getEp()I

    :cond_3
    iget-object p1, p0, Lcom/transsion/postdetail/ui/view/ShortTvImmVideoItemView;->k:Lcom/transsion/player/orplayer/g;

    if-eqz p1, :cond_4

    invoke-interface {p1}, Lcom/transsion/player/orplayer/g;->pause()V

    :cond_4
    :goto_1
    return-void
.end method

.method public onPlayError(Lcom/transsion/player/orplayer/PlayError;Lao/e;)V
    .locals 5

    const-string v0, "errorInfo"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/transsion/postdetail/ui/view/ShortTvImmVideoItemView;->C:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/transsion/postdetail/ui/view/ShortTvImmVideoItemView;->D:J

    iget-object v0, p0, Lcom/transsion/postdetail/ui/view/ShortTvImmVideoItemView;->q:Lcom/transsion/postdetail/layer/b;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/transsion/postdetail/layer/b;->k(Lcom/transsion/player/orplayer/PlayError;)V

    :cond_0
    sget-object v0, Llg/a;->a:Llg/a$a;

    iget-object v2, p0, Lcom/transsion/postdetail/ui/view/ShortTvImmVideoItemView;->a:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/transsion/player/orplayer/PlayError;->getErrorCode()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p1}, Lcom/transsion/player/orplayer/PlayError;->getErrorMessage()Ljava/lang/String;

    move-result-object p1

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Lao/e;->k()Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :cond_1
    const/4 p2, 0x0

    :goto_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " --> IPlayerListener --> onPlayError()  errorCode:"

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " errorMessage:"

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " url:"

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " --> \u77ed\u64ad\u653e\u5931\u8d25\u4e86"

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "i_media"

    invoke-virtual {v0, p2, p1, v1}, Llg/a$a;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public onPlayErrorChangePayer(Lcom/transsion/player/orplayer/global/TnPlayerType;Lao/e;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/transsion/player/orplayer/f$a;->s(Lcom/transsion/player/orplayer/f;Lcom/transsion/player/orplayer/global/TnPlayerType;Lao/e;)V

    return-void
.end method

.method public onPlayerRelease(Lao/e;)V
    .locals 2

    iget-object p1, p0, Lcom/transsion/postdetail/ui/view/ShortTvImmVideoItemView;->C:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/transsion/postdetail/ui/view/ShortTvImmVideoItemView;->D:J

    return-void
.end method

.method public onPlayerReset()V
    .locals 14

    sget-object v0, Llg/a;->a:Llg/a$a;

    iget-object v1, p0, Lcom/transsion/postdetail/ui/view/ShortTvImmVideoItemView;->a:Ljava/lang/String;

    const/4 v4, 0x4

    const/4 v5, 0x0

    const-string v2, "player- onPlayerReset"

    const/4 v3, 0x0

    invoke-static/range {v0 .. v5}, Llg/a$a;->f(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/transsion/postdetail/ui/view/ShortTvImmVideoItemView;->H:Z

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/transsion/postdetail/ui/view/ShortTvImmVideoItemView;->F:Z

    iget-object v2, p0, Lcom/transsion/postdetail/ui/view/ShortTvImmVideoItemView;->C:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/transsion/postdetail/ui/view/ShortTvImmVideoItemView;->D:J

    invoke-virtual {p0, v0}, Landroid/view/View;->setKeepScreenOn(Z)V

    iput-boolean v0, p0, Lcom/transsion/postdetail/ui/view/ShortTvImmVideoItemView;->r:Z

    iget-object v4, p0, Lcom/transsion/postdetail/ui/view/ShortTvImmVideoItemView;->q:Lcom/transsion/postdetail/layer/b;

    if-eqz v4, :cond_0

    invoke-static {v4, v0, v1, v5}, Lcom/transsion/postdetail/layer/b;->e(Lcom/transsion/postdetail/layer/b;ZILjava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/transsion/postdetail/ui/view/ShortTvImmVideoItemView;->f:Lcom/transsion/moviedetailapi/bean/Subject;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/transsion/moviedetailapi/bean/Subject;->getShortTVFirstEp()Lcom/transsion/moviedetailapi/bean/ShortTVItem;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/transsion/moviedetailapi/bean/ShortTVItem;->getVideo()Lcom/transsion/moviedetailapi/bean/Media;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/transsion/moviedetailapi/bean/Media;->getVideoAddress()Lcom/transsion/moviedetailapi/bean/Video;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/transsion/moviedetailapi/bean/Video;->getUrl()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    sget-object v1, Lcom/transsion/postdetail/helper/ShortTvImmVideoHelper;->k:Lcom/transsion/postdetail/helper/ShortTvImmVideoHelper$a;

    invoke-virtual {v1}, Lcom/transsion/postdetail/helper/ShortTvImmVideoHelper$a;->a()Lcom/transsion/postdetail/helper/ShortTvImmVideoHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/transsion/postdetail/helper/ShortTvImmVideoHelper;->o()Ljava/util/Map;

    move-result-object v1

    iget-object v4, p0, Lcom/transsion/postdetail/ui/view/ShortTvImmVideoItemView;->b:Lso/l0;

    iget-object v4, v4, Lso/l0;->m:Landroid/widget/ProgressBar;

    invoke-virtual {v4}, Landroid/widget/ProgressBar;->getProgress()I

    move-result v4

    int-to-long v6, v4

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v1, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    :cond_1
    iget-object v0, p0, Lcom/transsion/postdetail/ui/view/ShortTvImmVideoItemView;->k:Lcom/transsion/player/orplayer/g;

    if-eqz v0, :cond_2

    invoke-interface {v0, p0}, Lcom/transsion/player/orplayer/g;->removePlayerListener(Lcom/transsion/player/orplayer/f;)V

    :cond_2
    iget-object v0, p0, Lcom/transsion/postdetail/ui/view/ShortTvImmVideoItemView;->f:Lcom/transsion/moviedetailapi/bean/Subject;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/transsion/moviedetailapi/bean/Subject;->getDeleted()Z

    move-result v1

    if-eqz v1, :cond_4

    sget-object v1, Lcom/transsion/postdetail/control/a;->o:Lcom/transsion/postdetail/control/a$a;

    invoke-virtual {v1, v0}, Lcom/transsion/postdetail/control/a$a;->a(Lcom/transsion/moviedetailapi/bean/Subject;)Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_4

    iget-object v1, p0, Lcom/transsion/postdetail/ui/view/ShortTvImmVideoItemView;->k:Lcom/transsion/player/orplayer/g;

    if-eqz v1, :cond_4

    new-instance v4, Lao/e;

    invoke-virtual {v0}, Lcom/transsion/moviedetailapi/bean/Subject;->getShortTVFirstEp()Lcom/transsion/moviedetailapi/bean/ShortTVItem;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/transsion/moviedetailapi/bean/ShortTVItem;->getId()Ljava/lang/String;

    move-result-object v0

    move-object v7, v0

    goto :goto_0

    :cond_3
    move-object v7, v5

    :goto_0
    const/16 v12, 0x18

    const/4 v13, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v6, v4

    invoke-direct/range {v6 .. v13}, Lao/e;-><init>(Ljava/lang/String;Ljava/lang/String;ILcom/transsion/player/enum/PlayMimeType;Lcom/transsion/player/mediasession/MediaItem;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-interface {v1, v4}, Lcom/transsion/player/orplayer/g;->removeDataSource(Lao/e;)Z

    :cond_4
    iget-object v0, p0, Lcom/transsion/postdetail/ui/view/ShortTvImmVideoItemView;->b:Lso/l0;

    iget-object v0, v0, Lso/l0;->f:Landroidx/appcompat/widget/AppCompatImageView;

    const-string v1, "ivCover"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Ljg/c;->k(Landroid/view/View;)V

    iget-object v0, p0, Lcom/transsion/postdetail/ui/view/ShortTvImmVideoItemView;->b:Lso/l0;

    iget-object v0, v0, Lso/l0;->h:Landroidx/appcompat/widget/AppCompatImageView;

    const-string v1, "ivPause"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Ljg/c;->g(Landroid/view/View;)V

    iget-object v0, p0, Lcom/transsion/postdetail/ui/view/ShortTvImmVideoItemView;->b:Lso/l0;

    iget-object v0, v0, Lso/l0;->o:Landroidx/appcompat/widget/AppCompatSeekBar;

    const-string v1, "seekBar"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Ljg/c;->g(Landroid/view/View;)V

    iget-object v0, p0, Lcom/transsion/postdetail/ui/view/ShortTvImmVideoItemView;->n:Lcom/transsion/postdetail/ui/view/ImmVideoGuideView;

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lcom/transsion/postdetail/ui/view/ImmVideoGuideView;->removeGuide()V

    :cond_5
    iput-object v5, p0, Lcom/transsion/postdetail/ui/view/ShortTvImmVideoItemView;->k:Lcom/transsion/player/orplayer/g;

    iput-object v5, p0, Lcom/transsion/postdetail/ui/view/ShortTvImmVideoItemView;->l:Lcom/transsion/player/ui/ORPlayerView;

    iput-object v5, p0, Lcom/transsion/postdetail/ui/view/ShortTvImmVideoItemView;->m:Lcom/transsion/shorttv/base/pager/PagerLayoutManager;

    iput-wide v2, p0, Lcom/transsion/postdetail/ui/view/ShortTvImmVideoItemView;->u:J

    return-void
.end method

.method public onPrepare(Lao/e;)V
    .locals 11

    iget-boolean p1, p0, Lcom/transsion/postdetail/ui/view/ShortTvImmVideoItemView;->H:Z

    if-nez p1, :cond_4

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/transsion/postdetail/ui/view/ShortTvImmVideoItemView;->H:Z

    iget-object v0, p0, Lcom/transsion/postdetail/ui/view/ShortTvImmVideoItemView;->k:Lcom/transsion/player/orplayer/g;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/transsion/player/orplayer/g;->getDuration()J

    move-result-wide v2

    long-to-int v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    sget-object v8, Llg/a;->a:Llg/a$a;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "shorttv.here.duration: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-static {v8, v2, v1, v3, v4}, Llg/a$a;->g(Llg/a$a;Ljava/lang/String;ZILjava/lang/Object;)V

    iget-object v1, p0, Lcom/transsion/postdetail/ui/view/ShortTvImmVideoItemView;->b:Lso/l0;

    iget-object v1, v1, Lso/l0;->m:Landroid/widget/ProgressBar;

    invoke-virtual {v1, v0}, Landroid/widget/ProgressBar;->setMax(I)V

    iget-object v1, p0, Lcom/transsion/postdetail/ui/view/ShortTvImmVideoItemView;->b:Lso/l0;

    iget-object v1, v1, Lso/l0;->o:Landroidx/appcompat/widget/AppCompatSeekBar;

    invoke-virtual {v1, v0}, Landroid/widget/ProgressBar;->setMax(I)V

    iget-object v0, p0, Lcom/transsion/postdetail/ui/view/ShortTvImmVideoItemView;->f:Lcom/transsion/moviedetailapi/bean/Subject;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/transsion/moviedetailapi/bean/Subject;->getShortTVFirstEp()Lcom/transsion/moviedetailapi/bean/ShortTVItem;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/transsion/moviedetailapi/bean/ShortTVItem;->getVideo()Lcom/transsion/moviedetailapi/bean/Media;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/transsion/moviedetailapi/bean/Media;->getVideoAddress()Lcom/transsion/moviedetailapi/bean/Video;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/transsion/moviedetailapi/bean/Video;->getUrl()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    sget-object v1, Lcom/transsion/postdetail/helper/ShortTvImmVideoHelper;->k:Lcom/transsion/postdetail/helper/ShortTvImmVideoHelper$a;

    invoke-virtual {v1}, Lcom/transsion/postdetail/helper/ShortTvImmVideoHelper$a;->a()Lcom/transsion/postdetail/helper/ShortTvImmVideoHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/transsion/postdetail/helper/ShortTvImmVideoHelper;->o()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    const-wide/16 v9, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    goto :goto_1

    :cond_1
    move-wide v0, v9

    :goto_1
    iget-object v3, p0, Lcom/transsion/postdetail/ui/view/ShortTvImmVideoItemView;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/transsion/postdetail/ui/view/ShortTvImmVideoItemView;->b:Lso/l0;

    iget-object v2, v2, Lso/l0;->m:Landroid/widget/ProgressBar;

    invoke-virtual {v2}, Landroid/widget/ProgressBar;->getMax()I

    move-result v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "player- onPrepare, duration = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", progress = "

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x4

    const/4 v7, 0x0

    const/4 v5, 0x0

    move-object v2, v8

    invoke-static/range {v2 .. v7}, Llg/a$a;->f(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    cmp-long v2, v0, v9

    if-ltz v2, :cond_2

    iput-wide v0, p0, Lcom/transsion/postdetail/ui/view/ShortTvImmVideoItemView;->u:J

    iget-object v2, p0, Lcom/transsion/postdetail/ui/view/ShortTvImmVideoItemView;->b:Lso/l0;

    iget-object v2, v2, Lso/l0;->m:Landroid/widget/ProgressBar;

    long-to-int v3, v0

    invoke-virtual {v2, v3}, Landroid/widget/ProgressBar;->setProgress(I)V

    iget-object v2, p0, Lcom/transsion/postdetail/ui/view/ShortTvImmVideoItemView;->b:Lso/l0;

    iget-object v2, v2, Lso/l0;->o:Landroidx/appcompat/widget/AppCompatSeekBar;

    invoke-virtual {v2, v3}, Landroid/widget/ProgressBar;->setProgress(I)V

    iget-object v2, p0, Lcom/transsion/postdetail/ui/view/ShortTvImmVideoItemView;->k:Lcom/transsion/player/orplayer/g;

    if-eqz v2, :cond_2

    invoke-interface {v2, v0, v1}, Lcom/transsion/player/orplayer/g;->seekTo(J)V

    :cond_2
    iget-boolean v0, p0, Lcom/transsion/postdetail/ui/view/ShortTvImmVideoItemView;->r:Z

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lcom/transsion/postdetail/ui/view/ShortTvImmVideoItemView;->t:Z

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/transsion/postdetail/ui/view/ShortTvImmVideoItemView;->g:Landroidx/fragment/app/Fragment;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->isVisible()Z

    move-result v0

    if-ne v0, p1, :cond_3

    iget-object v3, p0, Lcom/transsion/postdetail/ui/view/ShortTvImmVideoItemView;->a:Ljava/lang/String;

    const/4 v6, 0x4

    const/4 v7, 0x0

    const-string v4, "player- onPrepare\uff0c play~"

    const/4 v5, 0x0

    move-object v2, v8

    invoke-static/range {v2 .. v7}, Llg/a$a;->f(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    iget-object v0, p0, Lcom/transsion/postdetail/ui/view/ShortTvImmVideoItemView;->k:Lcom/transsion/player/orplayer/g;

    if-eqz v0, :cond_3

    invoke-interface {v0}, Lcom/transsion/player/orplayer/g;->play()V

    :cond_3
    invoke-virtual {p0, p1}, Landroid/view/View;->setKeepScreenOn(Z)V

    :cond_4
    return-void
.end method

.method public onProgress(JLao/e;)V
    .locals 6

    iget-object v0, p0, Lcom/transsion/postdetail/ui/view/ShortTvImmVideoItemView;->C:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-boolean v0, p0, Lcom/transsion/postdetail/ui/view/ShortTvImmVideoItemView;->s:Z

    if-eqz v0, :cond_1

    return-void

    :cond_1
    sget-object v0, Lap/b;->a:Lap/b;

    invoke-virtual {v0}, Lap/b;->b()Z

    move-result v0

    if-eqz v0, :cond_3

    if-eqz p3, :cond_3

    invoke-virtual {p3}, Lao/e;->e()Ljava/lang/String;

    move-result-object p3

    iget-object v0, p0, Lcom/transsion/postdetail/ui/view/ShortTvImmVideoItemView;->f:Lcom/transsion/moviedetailapi/bean/Subject;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/transsion/moviedetailapi/bean/Subject;->getShortTVFirstEp()Lcom/transsion/moviedetailapi/bean/ShortTVItem;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/transsion/moviedetailapi/bean/ShortTVItem;->getId()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_3

    sget-object v0, Llg/a;->a:Llg/a$a;

    iget-object v1, p0, Lcom/transsion/postdetail/ui/view/ShortTvImmVideoItemView;->a:Ljava/lang/String;

    const/4 v4, 0x4

    const/4 v5, 0x0

    const-string v2, "onProgress- vid \u4e0d\u540c, return"

    const/4 v3, 0x0

    invoke-static/range {v0 .. v5}, Llg/a$a;->f(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    return-void

    :cond_3
    iget-object p3, p0, Lcom/transsion/postdetail/ui/view/ShortTvImmVideoItemView;->q:Lcom/transsion/postdetail/layer/b;

    if-eqz p3, :cond_4

    invoke-virtual {p3, p1, p2}, Lcom/transsion/postdetail/layer/b;->l(J)V

    :cond_4
    iget-object p3, p0, Lcom/transsion/postdetail/ui/view/ShortTvImmVideoItemView;->b:Lso/l0;

    iget-object p3, p3, Lso/l0;->m:Landroid/widget/ProgressBar;

    long-to-int v0, p1

    invoke-virtual {p3, v0}, Landroid/widget/ProgressBar;->setProgress(I)V

    iget-object p3, p0, Lcom/transsion/postdetail/ui/view/ShortTvImmVideoItemView;->b:Lso/l0;

    iget-object p3, p3, Lso/l0;->o:Landroidx/appcompat/widget/AppCompatSeekBar;

    invoke-virtual {p3, v0}, Landroid/widget/ProgressBar;->setProgress(I)V

    invoke-direct {p0, p1, p2}, Lcom/transsion/postdetail/ui/view/ShortTvImmVideoItemView;->t(J)V

    return-void
.end method

.method public onRenderFirstFrame()V
    .locals 6

    sget-object v0, Llg/a;->a:Llg/a$a;

    iget-object v1, p0, Lcom/transsion/postdetail/ui/view/ShortTvImmVideoItemView;->a:Ljava/lang/String;

    const/4 v4, 0x4

    const/4 v5, 0x0

    const-string v2, "player- onRenderFirstFrame"

    const/4 v3, 0x0

    invoke-static/range {v0 .. v5}, Llg/a$a;->f(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    iget-object v0, p0, Lcom/transsion/postdetail/ui/view/ShortTvImmVideoItemView;->b:Lso/l0;

    iget-object v0, v0, Lso/l0;->f:Landroidx/appcompat/widget/AppCompatImageView;

    const-string v1, "ivCover"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Ljg/c;->g(Landroid/view/View;)V

    iget-object v0, p0, Lcom/transsion/postdetail/ui/view/ShortTvImmVideoItemView;->q:Lcom/transsion/postdetail/layer/b;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/transsion/postdetail/layer/b;->m()V

    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/transsion/postdetail/ui/view/ShortTvImmVideoItemView;->setLoading(Z)V

    return-void
.end method

.method public onSetDataSource()V
    .locals 4

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/transsion/postdetail/ui/view/ShortTvImmVideoItemView;->F:Z

    iget-object v0, p0, Lcom/transsion/postdetail/ui/view/ShortTvImmVideoItemView;->C:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/transsion/postdetail/ui/view/ShortTvImmVideoItemView;->D:J

    invoke-direct {p0, v1}, Lcom/transsion/postdetail/ui/view/ShortTvImmVideoItemView;->setLoading(Z)V

    return-void
.end method

.method public onStateChanged(Landroidx/lifecycle/u;Landroidx/lifecycle/Lifecycle$Event;)V
    .locals 6

    const-string v0, "source"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "event"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p1, Lcom/transsion/postdetail/ui/view/ShortTvImmVideoItemView$a;->a:[I

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    aget p1, p1, p2

    const/4 p2, 0x1

    if-eq p1, p2, :cond_5

    const/4 p2, 0x2

    if-eq p1, p2, :cond_3

    const/4 p2, 0x3

    if-eq p1, p2, :cond_2

    const/4 p2, 0x5

    if-eq p1, p2, :cond_0

    goto/16 :goto_0

    :cond_0
    iget-object p1, p0, Lcom/transsion/postdetail/ui/view/ShortTvImmVideoItemView;->g:Landroidx/fragment/app/Fragment;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p1, p0}, Landroidx/lifecycle/Lifecycle;->d(Landroidx/lifecycle/t;)V

    :cond_1
    iget-object p1, p0, Lcom/transsion/postdetail/ui/view/ShortTvImmVideoItemView;->q:Lcom/transsion/postdetail/layer/b;

    if-eqz p1, :cond_6

    invoke-virtual {p1}, Lcom/transsion/postdetail/layer/b;->p()V

    goto/16 :goto_0

    :cond_2
    iget-object p1, p0, Lcom/transsion/postdetail/ui/view/ShortTvImmVideoItemView;->f:Lcom/transsion/moviedetailapi/bean/Subject;

    if-eqz p1, :cond_6

    invoke-virtual {p1}, Lcom/transsion/moviedetailapi/bean/Subject;->getShortTVFirstEp()Lcom/transsion/moviedetailapi/bean/ShortTVItem;

    move-result-object p1

    if-eqz p1, :cond_6

    invoke-virtual {p1}, Lcom/transsion/moviedetailapi/bean/ShortTVItem;->getVideo()Lcom/transsion/moviedetailapi/bean/Media;

    move-result-object p1

    if-eqz p1, :cond_6

    invoke-virtual {p1}, Lcom/transsion/moviedetailapi/bean/Media;->getVideoAddress()Lcom/transsion/moviedetailapi/bean/Video;

    move-result-object p1

    if-eqz p1, :cond_6

    invoke-virtual {p1}, Lcom/transsion/moviedetailapi/bean/Video;->getUrl()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_6

    sget-object p2, Lcom/transsion/postdetail/helper/ShortTvImmVideoHelper;->k:Lcom/transsion/postdetail/helper/ShortTvImmVideoHelper$a;

    invoke-virtual {p2}, Lcom/transsion/postdetail/helper/ShortTvImmVideoHelper$a;->a()Lcom/transsion/postdetail/helper/ShortTvImmVideoHelper;

    move-result-object p2

    invoke-virtual {p2}, Lcom/transsion/postdetail/helper/ShortTvImmVideoHelper;->o()Ljava/util/Map;

    move-result-object p2

    iget-object v0, p0, Lcom/transsion/postdetail/ui/view/ShortTvImmVideoItemView;->b:Lso/l0;

    iget-object v0, v0, Lso/l0;->m:Landroid/widget/ProgressBar;

    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getProgress()I

    move-result v0

    int-to-long v0, v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    goto :goto_0

    :cond_3
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/transsion/postdetail/ui/view/ShortTvImmVideoItemView;->t:Z

    iget-boolean p1, p0, Lcom/transsion/postdetail/ui/view/ShortTvImmVideoItemView;->r:Z

    if-nez p1, :cond_6

    iget-object p1, p0, Lcom/transsion/postdetail/ui/view/ShortTvImmVideoItemView;->g:Landroidx/fragment/app/Fragment;

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->isVisible()Z

    move-result p1

    if-nez p1, :cond_4

    new-instance p1, Lcom/transsion/postdetail/ui/view/a2;

    invoke-direct {p1, p0}, Lcom/transsion/postdetail/ui/view/a2;-><init>(Lcom/transsion/postdetail/ui/view/ShortTvImmVideoItemView;)V

    invoke-virtual {p0, p1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_4
    iget-object p1, p0, Lcom/transsion/postdetail/ui/view/ShortTvImmVideoItemView;->k:Lcom/transsion/player/orplayer/g;

    if-eqz p1, :cond_6

    invoke-interface {p1}, Lcom/transsion/player/orplayer/g;->play()V

    goto :goto_0

    :cond_5
    iput-boolean p2, p0, Lcom/transsion/postdetail/ui/view/ShortTvImmVideoItemView;->t:Z

    sget-object v0, Llg/a;->a:Llg/a$a;

    iget-object v1, p0, Lcom/transsion/postdetail/ui/view/ShortTvImmVideoItemView;->a:Ljava/lang/String;

    const/4 v4, 0x4

    const/4 v5, 0x0

    const-string v2, "player- onPause"

    const/4 v3, 0x0

    invoke-static/range {v0 .. v5}, Llg/a$a;->f(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    iget-object p1, p0, Lcom/transsion/postdetail/ui/view/ShortTvImmVideoItemView;->k:Lcom/transsion/player/orplayer/g;

    if-eqz p1, :cond_6

    invoke-interface {p1}, Lcom/transsion/player/orplayer/g;->pause()V

    :cond_6
    :goto_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/transsion/postdetail/ui/view/ShortTvImmVideoItemView;->o:Landroid/view/GestureDetector;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    :goto_0
    return v1
.end method

.method public onTracksAudioBitrateChange(I)V
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/player/orplayer/f$a;->C(Lcom/transsion/player/orplayer/f;I)V

    return-void
.end method

.method public onTracksChange(Lmo/c;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/player/orplayer/f$a;->D(Lcom/transsion/player/orplayer/f;Lmo/c;)V

    return-void
.end method

.method public onTracksVideoBitrateChange(I)V
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/player/orplayer/f$a;->E(Lcom/transsion/player/orplayer/f;I)V

    return-void
.end method

.method public onVideoPause(Lao/e;)V
    .locals 6

    sget-object v0, Llg/a;->a:Llg/a$a;

    iget-object v1, p0, Lcom/transsion/postdetail/ui/view/ShortTvImmVideoItemView;->a:Ljava/lang/String;

    const/4 v4, 0x4

    const/4 v5, 0x0

    const-string v2, "player- onVideoPause"

    const/4 v3, 0x0

    invoke-static/range {v0 .. v5}, Llg/a$a;->f(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    iget-object p1, p0, Lcom/transsion/postdetail/ui/view/ShortTvImmVideoItemView;->b:Lso/l0;

    iget-object p1, p1, Lso/l0;->h:Landroidx/appcompat/widget/AppCompatImageView;

    const-string v0, "ivPause"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Ljg/c;->k(Landroid/view/View;)V

    iget-object p1, p0, Lcom/transsion/postdetail/ui/view/ShortTvImmVideoItemView;->b:Lso/l0;

    iget-object p1, p1, Lso/l0;->o:Landroidx/appcompat/widget/AppCompatSeekBar;

    const-string v0, "seekBar"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Ljg/c;->k(Landroid/view/View;)V

    iget-object p1, p0, Lcom/transsion/postdetail/ui/view/ShortTvImmVideoItemView;->b:Lso/l0;

    iget-object p1, p1, Lso/l0;->m:Landroid/widget/ProgressBar;

    const-string v0, "progressBar"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Ljg/c;->g(Landroid/view/View;)V

    iget-object p1, p0, Lcom/transsion/postdetail/ui/view/ShortTvImmVideoItemView;->q:Lcom/transsion/postdetail/layer/b;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/transsion/postdetail/layer/b;->n()V

    :cond_0
    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/view/View;->setKeepScreenOn(Z)V

    return-void
.end method

.method public onVideoSizeChanged(II)V
    .locals 6

    invoke-static {p0, p1, p2}, Lcom/transsion/player/orplayer/f$a;->H(Lcom/transsion/player/orplayer/f;II)V

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v4, 0x4

    const/4 v5, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/transsion/postdetail/ui/view/ShortTvImmVideoItemView;->E(Lcom/transsion/postdetail/ui/view/ShortTvImmVideoItemView;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;ILjava/lang/Object;)V

    return-void
.end method

.method public onVideoStart(Lao/e;)V
    .locals 6

    sget-object v0, Llg/a;->a:Llg/a$a;

    iget-object v1, p0, Lcom/transsion/postdetail/ui/view/ShortTvImmVideoItemView;->a:Ljava/lang/String;

    const/4 v4, 0x4

    const/4 v5, 0x0

    const-string v2, "player- onVideoStart"

    const/4 v3, 0x0

    invoke-static/range {v0 .. v5}, Llg/a$a;->f(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    iget-object p1, p0, Lcom/transsion/postdetail/ui/view/ShortTvImmVideoItemView;->q:Lcom/transsion/postdetail/layer/b;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/transsion/postdetail/layer/b;->o()V

    :cond_0
    iget-object p1, p0, Lcom/transsion/postdetail/ui/view/ShortTvImmVideoItemView;->b:Lso/l0;

    iget-object p1, p1, Lso/l0;->h:Landroidx/appcompat/widget/AppCompatImageView;

    const-string v0, "ivPause"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Ljg/c;->g(Landroid/view/View;)V

    iget-object p1, p0, Lcom/transsion/postdetail/ui/view/ShortTvImmVideoItemView;->b:Lso/l0;

    iget-object p1, p1, Lso/l0;->o:Landroidx/appcompat/widget/AppCompatSeekBar;

    const-string v0, "seekBar"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Ljg/c;->g(Landroid/view/View;)V

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/transsion/postdetail/ui/view/ShortTvImmVideoItemView;->setLoading(Z)V

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroid/view/View;->setKeepScreenOn(Z)V

    return-void
.end method

.method public final setData(Lcom/transsion/moviedetailapi/bean/Subject;Landroidx/fragment/app/Fragment;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 44

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p4

    move/from16 v4, p6

    const-string v5, "item"

    invoke-static {v1, v5}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v5, "fragment"

    invoke-static {v2, v5}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v5, Lcom/transsion/postdetail/layer/b;

    invoke-direct {v5}, Lcom/transsion/postdetail/layer/b;-><init>()V

    iput-object v5, v0, Lcom/transsion/postdetail/ui/view/ShortTvImmVideoItemView;->q:Lcom/transsion/postdetail/layer/b;

    invoke-virtual {v5, v3}, Lcom/transsion/postdetail/layer/b;->s(Ljava/lang/String;)V

    iget-object v5, v0, Lcom/transsion/postdetail/ui/view/ShortTvImmVideoItemView;->q:Lcom/transsion/postdetail/layer/b;

    if-eqz v5, :cond_0

    move-object/from16 v6, p5

    invoke-virtual {v5, v6}, Lcom/transsion/postdetail/layer/b;->r(Ljava/lang/String;)V

    :cond_0
    iget-object v5, v0, Lcom/transsion/postdetail/ui/view/ShortTvImmVideoItemView;->q:Lcom/transsion/postdetail/layer/b;

    if-eqz v5, :cond_1

    sget-object v6, Lcom/transsion/moviedetailapi/SubjectType;->SHORT_TV:Lcom/transsion/moviedetailapi/SubjectType;

    invoke-virtual {v6}, Lcom/transsion/moviedetailapi/SubjectType;->getValue()I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/transsion/postdetail/layer/b;->y(I)V

    :cond_1
    new-instance v5, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;

    move-object v7, v5

    const/16 v42, 0x1

    const/16 v43, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x0

    const/16 v31, 0x0

    const/16 v32, 0x0

    const/16 v33, 0x0

    const/16 v34, 0x0

    const/16 v35, 0x0

    const/16 v36, 0x0

    const/16 v37, 0x0

    const/16 v38, 0x0

    const/16 v39, 0x0

    const/16 v40, 0x0

    const/16 v41, -0x1

    invoke-direct/range {v7 .. v43}, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/transsion/moviedetailapi/bean/Group;Ljava/lang/Boolean;Ljava/lang/Boolean;Lcom/transsion/moviedetailapi/bean/Link;Lcom/transsion/moviedetailapi/bean/Media;Ljava/lang/String;Lcom/transsion/moviedetailapi/bean/Stat;Ljava/lang/Integer;Lcom/transsion/moviedetailapi/bean/Subject;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Lcom/transsion/moviedetailapi/bean/User;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;ZLjava/lang/Float;Ljava/lang/Float;Ljava/lang/String;Ljava/lang/String;ZLjava/util/List;ZLcom/transsion/ad/bidding/nativead/BiddingNativeManager;ZZZZLcom/transsion/moviedetailapi/bean/CommentBean;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual {v5, v1}, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->setSubject(Lcom/transsion/moviedetailapi/bean/Subject;)V

    invoke-virtual/range {p1 .. p1}, Lcom/transsion/moviedetailapi/bean/Subject;->getOps()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->setOps(Ljava/lang/String;)V

    const-string v6, "7"

    invoke-virtual {v5, v6}, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->setItemType(Ljava/lang/String;)V

    iget-object v6, v0, Lcom/transsion/postdetail/ui/view/ShortTvImmVideoItemView;->q:Lcom/transsion/postdetail/layer/b;

    if-eqz v6, :cond_2

    const-string v7, ""

    invoke-virtual {v6, v7, v5}, Lcom/transsion/postdetail/layer/b;->x(Ljava/lang/String;Lcom/transsion/moviedetailapi/bean/PostSubjectItem;)V

    :cond_2
    iput-object v2, v0, Lcom/transsion/postdetail/ui/view/ShortTvImmVideoItemView;->g:Landroidx/fragment/app/Fragment;

    iget-object v5, v0, Lcom/transsion/postdetail/ui/view/ShortTvImmVideoItemView;->h:Ljava/lang/Boolean;

    iput-object v5, v0, Lcom/transsion/postdetail/ui/view/ShortTvImmVideoItemView;->h:Ljava/lang/Boolean;

    iput-object v3, v0, Lcom/transsion/postdetail/ui/view/ShortTvImmVideoItemView;->j:Ljava/lang/String;

    move-object/from16 v3, p3

    iput-object v3, v0, Lcom/transsion/postdetail/ui/view/ShortTvImmVideoItemView;->i:Ljava/lang/Integer;

    iput-boolean v4, v0, Lcom/transsion/postdetail/ui/view/ShortTvImmVideoItemView;->E:Z

    invoke-virtual/range {p2 .. p2}, Landroidx/fragment/app/Fragment;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroidx/lifecycle/Lifecycle;->a(Landroidx/lifecycle/t;)V

    new-instance v3, Lcom/transsion/postdetail/ui/view/ShortTvImmVideoItemView$setData$$inlined$viewModels$default$1;

    invoke-direct {v3, v2}, Lcom/transsion/postdetail/ui/view/ShortTvImmVideoItemView$setData$$inlined$viewModels$default$1;-><init>(Landroidx/fragment/app/Fragment;)V

    const-class v5, Lcom/transsion/postdetail/viewmodel/x;

    invoke-static {v5}, Lkotlin/jvm/internal/Reflection;->b(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v5

    new-instance v6, Lcom/transsion/postdetail/ui/view/ShortTvImmVideoItemView$setData$$inlined$viewModels$default$2;

    invoke-direct {v6, v3}, Lcom/transsion/postdetail/ui/view/ShortTvImmVideoItemView$setData$$inlined$viewModels$default$2;-><init>(Lkotlin/jvm/functions/Function0;)V

    new-instance v7, Lcom/transsion/postdetail/ui/view/ShortTvImmVideoItemView$setData$$inlined$viewModels$default$3;

    invoke-direct {v7, v3, v2}, Lcom/transsion/postdetail/ui/view/ShortTvImmVideoItemView$setData$$inlined$viewModels$default$3;-><init>(Lkotlin/jvm/functions/Function0;Landroidx/fragment/app/Fragment;)V

    invoke-static {v2, v5, v6, v7}, Landroidx/fragment/app/FragmentViewModelLazyKt;->a(Landroidx/fragment/app/Fragment;Lkotlin/reflect/KClass;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v3

    invoke-static {v3}, Lcom/transsion/postdetail/ui/view/ShortTvImmVideoItemView;->y(Lkotlin/Lazy;)Lcom/transsion/postdetail/viewmodel/x;

    move-result-object v3

    iput-object v3, v0, Lcom/transsion/postdetail/ui/view/ShortTvImmVideoItemView;->c:Lcom/transsion/postdetail/viewmodel/x;

    new-instance v3, Lcom/transsion/postdetail/ui/view/ShortTvImmVideoItemView$setData$$inlined$viewModels$default$4;

    invoke-direct {v3, v2}, Lcom/transsion/postdetail/ui/view/ShortTvImmVideoItemView$setData$$inlined$viewModels$default$4;-><init>(Landroidx/fragment/app/Fragment;)V

    const-class v5, Lcom/transsion/postdetail/shorttv/ShortTvPlayListViewModel;

    invoke-static {v5}, Lkotlin/jvm/internal/Reflection;->b(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v5

    new-instance v6, Lcom/transsion/postdetail/ui/view/ShortTvImmVideoItemView$setData$$inlined$viewModels$default$5;

    invoke-direct {v6, v3}, Lcom/transsion/postdetail/ui/view/ShortTvImmVideoItemView$setData$$inlined$viewModels$default$5;-><init>(Lkotlin/jvm/functions/Function0;)V

    new-instance v7, Lcom/transsion/postdetail/ui/view/ShortTvImmVideoItemView$setData$$inlined$viewModels$default$6;

    invoke-direct {v7, v3, v2}, Lcom/transsion/postdetail/ui/view/ShortTvImmVideoItemView$setData$$inlined$viewModels$default$6;-><init>(Lkotlin/jvm/functions/Function0;Landroidx/fragment/app/Fragment;)V

    invoke-static {v2, v5, v6, v7}, Landroidx/fragment/app/FragmentViewModelLazyKt;->a(Landroidx/fragment/app/Fragment;Lkotlin/reflect/KClass;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v2

    invoke-static {v2}, Lcom/transsion/postdetail/ui/view/ShortTvImmVideoItemView;->z(Lkotlin/Lazy;)Lcom/transsion/postdetail/shorttv/ShortTvPlayListViewModel;

    move-result-object v2

    iput-object v2, v0, Lcom/transsion/postdetail/ui/view/ShortTvImmVideoItemView;->d:Lcom/transsion/postdetail/shorttv/ShortTvPlayListViewModel;

    iput-object v1, v0, Lcom/transsion/postdetail/ui/view/ShortTvImmVideoItemView;->f:Lcom/transsion/moviedetailapi/bean/Subject;

    invoke-direct/range {p0 .. p1}, Lcom/transsion/postdetail/ui/view/ShortTvImmVideoItemView;->F(Lcom/transsion/moviedetailapi/bean/Subject;)V

    if-eqz v4, :cond_3

    iget-object v1, v0, Lcom/transsion/postdetail/ui/view/ShortTvImmVideoItemView;->b:Lso/l0;

    iget-object v1, v1, Lso/l0;->n:Landroid/widget/Space;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    instance-of v2, v1, Landroidx/constraintlayout/widget/ConstraintLayout$b;

    if-eqz v2, :cond_3

    check-cast v1, Landroidx/constraintlayout/widget/ConstraintLayout$b;

    const/high16 v2, 0x41800000    # 16.0f

    invoke-static {v2}, Lcom/blankj/utilcode/util/a0;->a(F)I

    move-result v2

    iput v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    :cond_3
    invoke-direct/range {p0 .. p0}, Lcom/transsion/postdetail/ui/view/ShortTvImmVideoItemView;->A()V

    return-void
.end method

.method public setOnSeekCompleteListener()V
    .locals 11

    invoke-static {p0}, Lcom/transsion/player/orplayer/f$a;->K(Lcom/transsion/player/orplayer/f;)V

    iget-object v0, p0, Lcom/transsion/postdetail/ui/view/ShortTvImmVideoItemView;->C:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-wide v0, p0, Lcom/transsion/postdetail/ui/view/ShortTvImmVideoItemView;->D:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_1

    sget-object v5, Llg/a;->a:Llg/a$a;

    iget-object v6, p0, Lcom/transsion/postdetail/ui/view/ShortTvImmVideoItemView;->a:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "seek OnSeekComplete\uff0cnextSeekTo:"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v7

    const/4 v9, 0x4

    const/4 v10, 0x0

    const/4 v8, 0x0

    invoke-static/range {v5 .. v10}, Llg/a$a;->r(Llg/a$a;Ljava/lang/String;[Ljava/lang/String;ZILjava/lang/Object;)V

    iget-object v0, p0, Lcom/transsion/postdetail/ui/view/ShortTvImmVideoItemView;->k:Lcom/transsion/player/orplayer/g;

    if-eqz v0, :cond_0

    iget-wide v4, p0, Lcom/transsion/postdetail/ui/view/ShortTvImmVideoItemView;->D:J

    invoke-interface {v0, v4, v5}, Lcom/transsion/player/orplayer/g;->seekTo(J)V

    :cond_0
    iput-wide v2, p0, Lcom/transsion/postdetail/ui/view/ShortTvImmVideoItemView;->D:J

    :cond_1
    return-void
.end method

.method public final setPagerLayoutManager(Lcom/transsion/shorttv/base/pager/PagerLayoutManager;)V
    .locals 1

    const-string v0, "pagerLayoutManager"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/transsion/postdetail/ui/view/ShortTvImmVideoItemView;->m:Lcom/transsion/shorttv/base/pager/PagerLayoutManager;

    return-void
.end method

.method public final setPlayer(Lcom/transsion/player/orplayer/g;Lcom/transsion/player/ui/ORPlayerView;)V
    .locals 1

    const-string v0, "orPlayer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "orPlayerView"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/transsion/postdetail/ui/view/ShortTvImmVideoItemView;->k:Lcom/transsion/player/orplayer/g;

    iput-object p2, p0, Lcom/transsion/postdetail/ui/view/ShortTvImmVideoItemView;->l:Lcom/transsion/player/ui/ORPlayerView;

    iget-object p2, p0, Lcom/transsion/postdetail/ui/view/ShortTvImmVideoItemView;->q:Lcom/transsion/postdetail/layer/b;

    if-eqz p2, :cond_0

    invoke-virtual {p2, p1}, Lcom/transsion/postdetail/layer/b;->v(Lcom/transsion/player/orplayer/g;)V

    :cond_0
    return-void
.end method

.method public final setPosition(Ljava/lang/Integer;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/postdetail/ui/view/ShortTvImmVideoItemView;->i:Ljava/lang/Integer;

    return-void
.end method

.method public final setVideoUrl(Ljava/lang/String;)V
    .locals 1

    const-string v0, "url"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/transsion/postdetail/ui/view/ShortTvImmVideoItemView;->q:Lcom/transsion/postdetail/layer/b;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/transsion/postdetail/layer/b;->A(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public final videoStartPrepare(Ljava/lang/String;)V
    .locals 1

    const-string v0, "pageFrom"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/transsion/postdetail/ui/view/ShortTvImmVideoItemView;->B:Ljava/lang/String;

    iget-object v0, p0, Lcom/transsion/postdetail/ui/view/ShortTvImmVideoItemView;->q:Lcom/transsion/postdetail/layer/b;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/transsion/postdetail/layer/b;->t(Ljava/lang/String;)V

    :cond_0
    iget-object p1, p0, Lcom/transsion/postdetail/ui/view/ShortTvImmVideoItemView;->q:Lcom/transsion/postdetail/layer/b;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/transsion/postdetail/layer/b;->g()V

    :cond_1
    iget-object p1, p0, Lcom/transsion/postdetail/ui/view/ShortTvImmVideoItemView;->q:Lcom/transsion/postdetail/layer/b;

    if-eqz p1, :cond_2

    const/4 v0, 0x0

    invoke-virtual {p1, v0, v0}, Lcom/transsion/postdetail/layer/b;->a(II)V

    :cond_2
    iget-object p1, p0, Lcom/transsion/postdetail/ui/view/ShortTvImmVideoItemView;->q:Lcom/transsion/postdetail/layer/b;

    if-eqz p1, :cond_3

    iget-object v0, p0, Lcom/transsion/postdetail/ui/view/ShortTvImmVideoItemView;->i:Ljava/lang/Integer;

    invoke-virtual {p1, v0}, Lcom/transsion/postdetail/layer/b;->w(Ljava/lang/Integer;)V

    :cond_3
    return-void
.end method
