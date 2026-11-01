.class public final Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;
.super Landroidx/constraintlayout/widget/ConstraintLayout;

# interfaces
.implements Lcom/transsion/player/orplayer/f;
.implements Landroid/view/View$OnClickListener;
.implements Landroidx/lifecycle/r;
.implements Lcom/transsion/shorttv/ui/widget/d;
.implements Lcom/transsion/subtitle_download/a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u00ec\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u000c\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\r\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\t\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0010\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\r\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0013\n\u0002\u0018\u0002\n\u0002\u0008\r\n\u0002\u0018\u0002\n\u0002\u0008\u000f\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u000e\n\u0002\u0018\u0002\n\u0002\u0008\u0014\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u000e\n\u0002\u0018\u0002\n\u0002\u0008\r\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\n*\u0002\u00a8\u0002\u0018\u00002\u00020\u00012\u00020\u00022\u00020\u00032\u00020\u00042\u00020\u00052\u00020\u0006B!\u0012\u0006\u0010\u0008\u001a\u00020\u0007\u0012\u0008\u0010\n\u001a\u0004\u0018\u00010\t\u0012\u0006\u0010\u000c\u001a\u00020\u000b\u00a2\u0006\u0004\u0008\r\u0010\u000eB\u0011\u0008\u0016\u0012\u0006\u0010\u0008\u001a\u00020\u0007\u00a2\u0006\u0004\u0008\r\u0010\u000fB\u001b\u0008\u0016\u0012\u0006\u0010\u0008\u001a\u00020\u0007\u0012\u0008\u0010\n\u001a\u0004\u0018\u00010\t\u00a2\u0006\u0004\u0008\r\u0010\u0010J\u000f\u0010\u0012\u001a\u00020\u0011H\u0014\u00a2\u0006\u0004\u0008\u0012\u0010\u0013J\u000f\u0010\u0014\u001a\u00020\u0011H\u0014\u00a2\u0006\u0004\u0008\u0014\u0010\u0013JU\u0010!\u001a\u00020\u00112\u0006\u0010\u0016\u001a\u00020\u00152\u0006\u0010\u0018\u001a\u00020\u00172\u0008\u0010\u0019\u001a\u0004\u0018\u00010\u000b2\u0006\u0010\u001b\u001a\u00020\u001a2\u0008\u0010\u001d\u001a\u0004\u0018\u00010\u001c2\u0008\u0010\u001e\u001a\u0004\u0018\u00010\u001c2\u0006\u0010\u001f\u001a\u00020\u001a2\u0006\u0010 \u001a\u00020\u001aH\u0016\u00a2\u0006\u0004\u0008!\u0010\"J-\u0010\'\u001a\u00020\u00112\u0008\u0010$\u001a\u0004\u0018\u00010#2\u0008\u0010&\u001a\u0004\u0018\u00010%2\u0008\u0010\u0016\u001a\u0004\u0018\u00010\u0015H\u0016\u00a2\u0006\u0004\u0008\'\u0010(J-\u0010)\u001a\u00020\u00112\u0008\u0010$\u001a\u0004\u0018\u00010#2\u0008\u0010&\u001a\u0004\u0018\u00010%2\u0008\u0010\u0016\u001a\u0004\u0018\u00010\u0015H\u0016\u00a2\u0006\u0004\u0008)\u0010(J\u0017\u0010*\u001a\u00020\u00112\u0006\u0010\u0019\u001a\u00020\u000bH\u0016\u00a2\u0006\u0004\u0008*\u0010+J\u001f\u0010.\u001a\u00020\u00112\u0006\u0010,\u001a\u00020\u000b2\u0006\u0010-\u001a\u00020\u000bH\u0016\u00a2\u0006\u0004\u0008.\u0010/J\u0019\u00100\u001a\u00020\u00112\u0008\u0010\u0016\u001a\u0004\u0018\u00010\u0015H\u0016\u00a2\u0006\u0004\u00080\u00101J\u0017\u00104\u001a\u00020\u00112\u0006\u00103\u001a\u000202H\u0016\u00a2\u0006\u0004\u00084\u00105J\u000f\u00107\u001a\u000206H\u0016\u00a2\u0006\u0004\u00087\u00108J\u0017\u0010<\u001a\u00020;2\u0006\u0010:\u001a\u000209H\u0016\u00a2\u0006\u0004\u0008<\u0010=J\u0017\u0010?\u001a\u00020\u00112\u0006\u0010>\u001a\u00020\u001aH\u0016\u00a2\u0006\u0004\u0008?\u0010@J\u0017\u0010C\u001a\u00020\u001a2\u0006\u0010B\u001a\u00020AH\u0016\u00a2\u0006\u0004\u0008C\u0010DJ\u001f\u0010H\u001a\u00020\u00112\u0006\u0010F\u001a\u00020E2\u0006\u0010B\u001a\u00020GH\u0016\u00a2\u0006\u0004\u0008H\u0010IJ\u000f\u0010J\u001a\u00020\u0011H\u0016\u00a2\u0006\u0004\u0008J\u0010\u0013J\r\u0010K\u001a\u00020\u0011\u00a2\u0006\u0004\u0008K\u0010\u0013J\r\u0010L\u001a\u00020\u0011\u00a2\u0006\u0004\u0008L\u0010\u0013J\u000f\u0010M\u001a\u00020\u0011H\u0016\u00a2\u0006\u0004\u0008M\u0010\u0013J\u0015\u0010O\u001a\u00020\u00112\u0006\u0010N\u001a\u00020\u001c\u00a2\u0006\u0004\u0008O\u0010PJ\u0015\u0010R\u001a\u00020\u00112\u0006\u0010Q\u001a\u00020\u001c\u00a2\u0006\u0004\u0008R\u0010PJ\u000f\u0010S\u001a\u00020\u0011H\u0016\u00a2\u0006\u0004\u0008S\u0010\u0013J\u000f\u0010T\u001a\u00020\u0011H\u0016\u00a2\u0006\u0004\u0008T\u0010\u0013J\u0019\u0010W\u001a\u00020\u00112\u0008\u0010V\u001a\u0004\u0018\u00010UH\u0016\u00a2\u0006\u0004\u0008W\u0010XJ\u0019\u0010Y\u001a\u00020\u00112\u0008\u0010V\u001a\u0004\u0018\u00010UH\u0016\u00a2\u0006\u0004\u0008Y\u0010XJ\u0019\u0010Z\u001a\u00020\u00112\u0008\u0010V\u001a\u0004\u0018\u00010UH\u0016\u00a2\u0006\u0004\u0008Z\u0010XJ!\u0010]\u001a\u00020\u00112\u0006\u0010\\\u001a\u00020[2\u0008\u0010V\u001a\u0004\u0018\u00010UH\u0016\u00a2\u0006\u0004\u0008]\u0010^J\u0019\u0010_\u001a\u00020\u00112\u0008\u0010V\u001a\u0004\u0018\u00010UH\u0016\u00a2\u0006\u0004\u0008_\u0010XJ\u0019\u0010`\u001a\u00020\u00112\u0008\u0010V\u001a\u0004\u0018\u00010UH\u0016\u00a2\u0006\u0004\u0008`\u0010XJ!\u0010c\u001a\u00020\u00112\u0006\u0010b\u001a\u00020a2\u0008\u0010V\u001a\u0004\u0018\u00010UH\u0016\u00a2\u0006\u0004\u0008c\u0010dJ\u000f\u0010e\u001a\u00020\u0011H\u0016\u00a2\u0006\u0004\u0008e\u0010\u0013J\u0019\u0010f\u001a\u00020\u00112\u0008\u0010V\u001a\u0004\u0018\u00010UH\u0016\u00a2\u0006\u0004\u0008f\u0010XJ\u0019\u0010i\u001a\u00020\u00112\u0008\u0010h\u001a\u0004\u0018\u00010gH\u0016\u00a2\u0006\u0004\u0008i\u0010jJ\r\u0010k\u001a\u00020\u0011\u00a2\u0006\u0004\u0008k\u0010\u0013J\u000f\u0010l\u001a\u00020[H\u0016\u00a2\u0006\u0004\u0008l\u0010mJ\u0019\u0010q\u001a\u00020\u00112\u0008\u0010n\u001a\u0004\u0018\u00010\u000bH\u0000\u00a2\u0006\u0004\u0008o\u0010pJ\u0019\u0010t\u001a\u00020\u00112\u0008\u0008\u0002\u0010r\u001a\u00020\u001aH\u0000\u00a2\u0006\u0004\u0008s\u0010@J\r\u0010u\u001a\u00020\u0011\u00a2\u0006\u0004\u0008u\u0010\u0013J\u000f\u0010v\u001a\u00020\u0011H\u0016\u00a2\u0006\u0004\u0008v\u0010\u0013J\u000f\u0010w\u001a\u00020\u0011H\u0016\u00a2\u0006\u0004\u0008w\u0010\u0013J\u001f\u0010z\u001a\u00020\u00112\u0006\u0010\\\u001a\u00020\u000b2\u0006\u0010y\u001a\u00020xH\u0016\u00a2\u0006\u0004\u0008z\u0010{J\u0017\u0010|\u001a\u00020\u00112\u0006\u0010y\u001a\u00020xH\u0016\u00a2\u0006\u0004\u0008|\u0010}J(\u0010\u0082\u0001\u001a\u00020\u00112\u000b\u0010\u0080\u0001\u001a\u00060~j\u0002`\u007f2\u0007\u0010\u0081\u0001\u001a\u00020xH\u0016\u00a2\u0006\u0006\u0008\u0082\u0001\u0010\u0083\u0001J\u0011\u0010\u0084\u0001\u001a\u00020\u0011H\u0002\u00a2\u0006\u0005\u0008\u0084\u0001\u0010\u0013J\u001e\u0010\u0087\u0001\u001a\u00020\u00112\n\u0010\u0086\u0001\u001a\u0005\u0018\u00010\u0085\u0001H\u0002\u00a2\u0006\u0006\u0008\u0087\u0001\u0010\u0088\u0001J\u0019\u0010\u0089\u0001\u001a\u00020\u00112\u0006\u0010\u0008\u001a\u00020\u0007H\u0002\u00a2\u0006\u0005\u0008\u0089\u0001\u0010\u000fJ\u0011\u0010\u008a\u0001\u001a\u00020\u0011H\u0002\u00a2\u0006\u0005\u0008\u008a\u0001\u0010\u0013J\u0011\u0010\u008b\u0001\u001a\u00020\u0011H\u0002\u00a2\u0006\u0005\u0008\u008b\u0001\u0010\u0013J\u001a\u0010\u008d\u0001\u001a\u00020\u00112\u0007\u0010\u008c\u0001\u001a\u00020\u001aH\u0002\u00a2\u0006\u0005\u0008\u008d\u0001\u0010@J(\u0010\u0090\u0001\u001a\u00020\u00112\t\u0010\u008e\u0001\u001a\u0004\u0018\u00010\u000b2\t\u0010\u008f\u0001\u001a\u0004\u0018\u00010\u000bH\u0002\u00a2\u0006\u0006\u0008\u0090\u0001\u0010\u0091\u0001J:\u0010\u0096\u0001\u001a\u00020\u00112\u0007\u0010\u0092\u0001\u001a\u00020\u001c2\u0008\u0010\u0094\u0001\u001a\u00030\u0093\u00012\t\u0010\u0016\u001a\u0005\u0018\u00010\u0095\u00012\u0008\u0008\u0002\u0010 \u001a\u00020\u001aH\u0002\u00a2\u0006\u0006\u0008\u0096\u0001\u0010\u0097\u0001J\u001b\u0010\u0098\u0001\u001a\u00020\u00112\u0008\u0010\u0016\u001a\u0004\u0018\u00010\u0015H\u0002\u00a2\u0006\u0005\u0008\u0098\u0001\u00101J\u001a\u0010\u0099\u0001\u001a\u00020\u00112\u0006\u0010\\\u001a\u00020[H\u0002\u00a2\u0006\u0006\u0008\u0099\u0001\u0010\u009a\u0001J\u001b\u0010\u009c\u0001\u001a\u00020\u00112\u0007\u0010\u009b\u0001\u001a\u00020[H\u0002\u00a2\u0006\u0006\u0008\u009c\u0001\u0010\u009a\u0001J\u0011\u0010\u009d\u0001\u001a\u00020\u0011H\u0002\u00a2\u0006\u0005\u0008\u009d\u0001\u0010\u0013J\u0011\u0010\u009e\u0001\u001a\u00020\u0011H\u0002\u00a2\u0006\u0005\u0008\u009e\u0001\u0010\u0013J\u0011\u0010\u009f\u0001\u001a\u00020\u0011H\u0002\u00a2\u0006\u0005\u0008\u009f\u0001\u0010\u0013J\u0011\u0010\u00a0\u0001\u001a\u00020\u0011H\u0002\u00a2\u0006\u0005\u0008\u00a0\u0001\u0010\u0013J\u001a\u0010\u00a2\u0001\u001a\u00020\u00112\u0007\u0010\u00a1\u0001\u001a\u00020\u001aH\u0002\u00a2\u0006\u0005\u0008\u00a2\u0001\u0010@J\u001a\u0010\u00a4\u0001\u001a\u00020\u00112\u0007\u0010\u00a3\u0001\u001a\u00020gH\u0002\u00a2\u0006\u0005\u0008\u00a4\u0001\u0010jJ\u0011\u0010\u00a5\u0001\u001a\u00020\u0011H\u0002\u00a2\u0006\u0005\u0008\u00a5\u0001\u0010\u0013J\u0011\u0010\u00a6\u0001\u001a\u00020\u0011H\u0002\u00a2\u0006\u0005\u0008\u00a6\u0001\u0010\u0013J\u0011\u0010\u00a7\u0001\u001a\u00020\u0011H\u0002\u00a2\u0006\u0005\u0008\u00a7\u0001\u0010\u0013J\u0011\u0010\u00a8\u0001\u001a\u00020\u0011H\u0002\u00a2\u0006\u0005\u0008\u00a8\u0001\u0010\u0013J&\u0010\u00ab\u0001\u001a\u00020\u00112\u0006\u0010&\u001a\u00020%2\n\u0010\u00aa\u0001\u001a\u0005\u0018\u00010\u00a9\u0001H\u0002\u00a2\u0006\u0006\u0008\u00ab\u0001\u0010\u00ac\u0001J\u0011\u0010\u00ad\u0001\u001a\u00020\u0011H\u0002\u00a2\u0006\u0005\u0008\u00ad\u0001\u0010\u0013J\u0011\u0010\u00ae\u0001\u001a\u00020\u0011H\u0002\u00a2\u0006\u0005\u0008\u00ae\u0001\u0010\u0013J\u001b\u0010\u00af\u0001\u001a\u00020\u00112\u0008\u0010\u0016\u001a\u0004\u0018\u00010\u0015H\u0002\u00a2\u0006\u0005\u0008\u00af\u0001\u00101J\u0011\u0010\u00b0\u0001\u001a\u00020\u0011H\u0002\u00a2\u0006\u0005\u0008\u00b0\u0001\u0010\u0013J)\u0010\u00b1\u0001\u001a\u00020\u00112\t\u0010\u00a3\u0001\u001a\u0004\u0018\u00010g2\n\u0010\u0094\u0001\u001a\u0005\u0018\u00010\u0093\u0001H\u0002\u00a2\u0006\u0006\u0008\u00b1\u0001\u0010\u00b2\u0001J)\u0010\u00b3\u0001\u001a\u00020\u00112\t\u0010\u00a3\u0001\u001a\u0004\u0018\u00010g2\n\u0010\u0094\u0001\u001a\u0005\u0018\u00010\u0093\u0001H\u0002\u00a2\u0006\u0006\u0008\u00b3\u0001\u0010\u00b2\u0001J\u0011\u0010\u00b4\u0001\u001a\u00020\u0011H\u0002\u00a2\u0006\u0005\u0008\u00b4\u0001\u0010\u0013J\u0011\u0010\u00b5\u0001\u001a\u00020\u0011H\u0002\u00a2\u0006\u0005\u0008\u00b5\u0001\u0010\u0013J\u001c\u0010\u00b8\u0001\u001a\u00030\u00b7\u00012\u0007\u0010\u00b6\u0001\u001a\u00020\u001cH\u0002\u00a2\u0006\u0006\u0008\u00b8\u0001\u0010\u00b9\u0001J\u001b\u0010\u00bb\u0001\u001a\u00020\u00112\u0007\u0010\u00ba\u0001\u001a\u00020[H\u0002\u00a2\u0006\u0006\u0008\u00bb\u0001\u0010\u009a\u0001J\u0011\u0010\u00bc\u0001\u001a\u00020\u0011H\u0002\u00a2\u0006\u0005\u0008\u00bc\u0001\u0010\u0013J\u001c\u0010\u00be\u0001\u001a\u00020\u00112\t\u0010\u00bd\u0001\u001a\u0004\u0018\u00010\u001cH\u0002\u00a2\u0006\u0005\u0008\u00be\u0001\u0010PJ\u0011\u0010\u00bf\u0001\u001a\u00020\u0011H\u0002\u00a2\u0006\u0005\u0008\u00bf\u0001\u0010\u0013J\u0011\u0010\u00c0\u0001\u001a\u00020\u0011H\u0002\u00a2\u0006\u0005\u0008\u00c0\u0001\u0010\u0013J\u0011\u0010\u00c1\u0001\u001a\u00020\u0011H\u0002\u00a2\u0006\u0005\u0008\u00c1\u0001\u0010\u0013J\u0011\u0010\u00c2\u0001\u001a\u00020\u0011H\u0002\u00a2\u0006\u0005\u0008\u00c2\u0001\u0010\u0013J\u0011\u0010\u00c3\u0001\u001a\u00020\u0011H\u0002\u00a2\u0006\u0005\u0008\u00c3\u0001\u0010\u0013J\u0011\u0010\u00c4\u0001\u001a\u00020\u0011H\u0002\u00a2\u0006\u0005\u0008\u00c4\u0001\u0010\u0013J\u0011\u0010\u00c5\u0001\u001a\u00020\u0011H\u0002\u00a2\u0006\u0005\u0008\u00c5\u0001\u0010\u0013J\u0011\u0010\u00c6\u0001\u001a\u00020\u0011H\u0002\u00a2\u0006\u0005\u0008\u00c6\u0001\u0010\u0013J\u001b\u0010\u00c8\u0001\u001a\u00020\u00112\u0007\u0010\u0016\u001a\u00030\u00c7\u0001H\u0002\u00a2\u0006\u0006\u0008\u00c8\u0001\u0010\u00c9\u0001J\u001c\u0010\u00cc\u0001\u001a\u00020\u00112\u0008\u0010\u00cb\u0001\u001a\u00030\u00ca\u0001H\u0002\u00a2\u0006\u0006\u0008\u00cc\u0001\u0010\u00cd\u0001J\u001b\u0010\u00ce\u0001\u001a\u00020\u00112\u0007\u0010\u0016\u001a\u00030\u00c7\u0001H\u0002\u00a2\u0006\u0006\u0008\u00ce\u0001\u0010\u00c9\u0001J\u0012\u0010\u00cf\u0001\u001a\u00020\u001aH\u0002\u00a2\u0006\u0006\u0008\u00cf\u0001\u0010\u00d0\u0001J\u0012\u0010\u00d1\u0001\u001a\u00020\u001aH\u0002\u00a2\u0006\u0006\u0008\u00d1\u0001\u0010\u00d0\u0001J\u0019\u0010\u00d2\u0001\u001a\u00020\u00112\u0006\u0010\u0016\u001a\u00020\u0015H\u0002\u00a2\u0006\u0005\u0008\u00d2\u0001\u00101J\u0019\u0010\u00d3\u0001\u001a\u00020\u00112\u0006\u0010\u0016\u001a\u00020\u0015H\u0002\u00a2\u0006\u0005\u0008\u00d3\u0001\u00101R\u0017\u0010\u00d6\u0001\u001a\u00020\u001c8\u0002X\u0082D\u00a2\u0006\u0008\n\u0006\u0008\u00d4\u0001\u0010\u00d5\u0001R\u0017\u0010\u00d8\u0001\u001a\u00020\u000b8\u0002X\u0082\u0004\u00a2\u0006\u0008\n\u0006\u0008\u00d7\u0001\u0010\u00ab\u0001R\u0018\u0010\u00dc\u0001\u001a\u00030\u00d9\u00018\u0002X\u0082\u0004\u00a2\u0006\u0008\n\u0006\u0008\u00da\u0001\u0010\u00db\u0001R\u001b\u0010\u00df\u0001\u001a\u0004\u0018\u00010\u00158\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u00dd\u0001\u0010\u00de\u0001R\u001c\u0010\u00e1\u0001\u001a\u0005\u0018\u00010\u0093\u00018\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u0080\u0001\u0010\u00e0\u0001R\u001a\u0010\u0018\u001a\u0004\u0018\u00010\u00178\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u00e2\u0001\u0010\u00e3\u0001R\u001a\u0010\u001b\u001a\u0004\u0018\u00010\u001a8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u00e4\u0001\u0010\u00e5\u0001R\u001a\u0010\u0019\u001a\u0004\u0018\u00010\u000b8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u008f\u0001\u0010\u00e6\u0001R\u001a\u0010\u001d\u001a\u0004\u0018\u00010\u001c8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u00e7\u0001\u0010\u00d5\u0001R\u001a\u0010$\u001a\u0004\u0018\u00010#8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u00e8\u0001\u0010\u00e9\u0001R\u001a\u0010&\u001a\u0004\u0018\u00010%8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u00ea\u0001\u0010\u00eb\u0001R\u001a\u00103\u001a\u0004\u0018\u0001028\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u00ec\u0001\u0010\u00ed\u0001R\u001c\u0010\u00f1\u0001\u001a\u0005\u0018\u00010\u00ee\u00018\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u00ef\u0001\u0010\u00f0\u0001R\u001c\u0010\u00f5\u0001\u001a\u0005\u0018\u00010\u00f2\u00018\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u00f3\u0001\u0010\u00f4\u0001R\u0019\u0010\u00f7\u0001\u001a\u00020\u001a8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u00f6\u0001\u0010\u0089\u0001R\u0019\u0010\u00f9\u0001\u001a\u00020\u001a8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u00f8\u0001\u0010\u0089\u0001R\u0019\u0010\u00fb\u0001\u001a\u00020\u001a8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u00fa\u0001\u0010\u0089\u0001R\u0019\u0010\u00fd\u0001\u001a\u00020[8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u00fc\u0001\u0010\u00b1\u0001R(\u0010\u00ff\u0001\u001a\u00020\u001a8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0017\n\u0006\u0008\u00fe\u0001\u0010\u0089\u0001\u001a\u0006\u0008\u00ff\u0001\u0010\u00d0\u0001\"\u0005\u0008\u0080\u0002\u0010@R\u001c\u0010\u0084\u0002\u001a\u0005\u0018\u00010\u0081\u00028\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u0082\u0002\u0010\u0083\u0002R\u0017\u0010\u0086\u0002\u001a\u00020\u000b8\u0002X\u0082\u0004\u00a2\u0006\u0008\n\u0006\u0008\u0085\u0002\u0010\u00ab\u0001R\u0016\u0010\u0087\u0002\u001a\u00020\u000b8\u0002X\u0082\u0004\u00a2\u0006\u0007\n\u0005\u0008h\u0010\u00ab\u0001R\u0017\u0010\u0088\u0002\u001a\u00020\u000b8\u0002X\u0082\u0004\u00a2\u0006\u0008\n\u0006\u0008\u008e\u0001\u0010\u00ab\u0001R\u0017\u0010\u008a\u0002\u001a\u00020\u000b8\u0002X\u0082\u0004\u00a2\u0006\u0008\n\u0006\u0008\u0089\u0002\u0010\u00ab\u0001R\u0018\u0010N\u001a\u00020\u001c8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u008b\u0002\u0010\u00d5\u0001R\u001b\u0010\u008e\u0002\u001a\u0004\u0018\u00010;8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u008c\u0002\u0010\u008d\u0002R\u001c\u0010\u0092\u0002\u001a\u0005\u0018\u00010\u008f\u00028\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u0090\u0002\u0010\u0091\u0002R\u0019\u0010\u0094\u0002\u001a\u00020\u000b8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u0093\u0002\u0010\u00ab\u0001R\u0019\u0010\u0096\u0002\u001a\u00020\u000b8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u0095\u0002\u0010\u00ab\u0001R\u001c\u0010\u009a\u0002\u001a\u0005\u0018\u00010\u0097\u00028\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u0098\u0002\u0010\u0099\u0002R\u001a\u0010\u009e\u0002\u001a\u00030\u009b\u00028\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u009c\u0002\u0010\u009d\u0002R\u0017\u0010\u00a0\u0002\u001a\u00020\u001a8\u0002X\u0082\u0004\u00a2\u0006\u0008\n\u0006\u0008\u009f\u0002\u0010\u0089\u0001R\u0019\u0010\u00a2\u0002\u001a\u00020\u001a8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u00a1\u0002\u0010\u0089\u0001R\u001e\u0010\u00a6\u0002\u001a\t\u0012\u0004\u0012\u00020\u001a0\u00a3\u00028\u0002X\u0082\u0004\u00a2\u0006\u0008\n\u0006\u0008\u00a4\u0002\u0010\u00a5\u0002R \u0010\u00a7\u0002\u001a\u000b\u0012\u0006\u0012\u0004\u0018\u00010\u001a0\u00a3\u00028\u0002X\u0082\u0004\u00a2\u0006\u0008\n\u0006\u0008\u00ab\u0001\u0010\u00a5\u0002R\u0018\u0010\u00aa\u0002\u001a\u00030\u00a8\u00028\u0002X\u0082\u0004\u00a2\u0006\u0008\n\u0006\u0008\u00b1\u0001\u0010\u00a9\u0002R\u0019\u0010\u00ab\u0002\u001a\u00020\u001a8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u00b3\u0001\u0010\u0089\u0001R\u0019\u0010\u00ac\u0002\u001a\u00020\u001a8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u00a7\u0001\u0010\u0089\u0001R\u001d\u0010\u00b1\u0002\u001a\u00080\u00ad\u0002j\u0003`\u00ae\u00028\u0002X\u0082\u0004\u00a2\u0006\u0008\n\u0006\u0008\u00af\u0002\u0010\u00b0\u0002R\u0019\u0010\u00b2\u0002\u001a\u00020\u001a8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u00b8\u0001\u0010\u0089\u0001R\u0018\u0010\u00b5\u0002\u001a\u00030\u00b3\u00028\u0002X\u0082\u0004\u00a2\u0006\u0008\n\u0006\u0008\u00bc\u0001\u0010\u00b4\u0002R\u001d\u0010\u00b7\u0002\u001a\u00080\u00ad\u0002j\u0003`\u00ae\u00028\u0002X\u0082\u0004\u00a2\u0006\u0008\n\u0006\u0008\u00b6\u0002\u0010\u00b0\u0002R\u001b\u0010\u00b8\u0002\u001a\u0004\u0018\u00010\u000b8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u00be\u0001\u0010\u00e6\u0001R\u001b\u0010\u00bb\u0002\u001a\u0004\u0018\u00010g8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u00b9\u0002\u0010\u00ba\u0002R\u0019\u0010\u00bc\u0002\u001a\u00020\u001a8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u00ce\u0001\u0010\u0089\u0001R\u001c\u0010\u00c0\u0002\u001a\u0005\u0018\u00010\u00bd\u00028\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u00be\u0002\u0010\u00bf\u0002R\u0019\u0010\u00c1\u0002\u001a\u00020\u001a8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u0087\u0001\u0010\u0089\u0001R,\u0010\u00c8\u0002\u001a\u0005\u0018\u00010\u00c2\u00028\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0018\n\u0006\u0008\u00b5\u0001\u0010\u00c3\u0002\u001a\u0006\u0008\u00c4\u0002\u0010\u00c5\u0002\"\u0006\u0008\u00c6\u0002\u0010\u00c7\u0002R\u001c\u0010\u00ca\u0002\u001a\u0005\u0018\u00010\u00c7\u00018\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u00b0\u0001\u0010\u00c9\u0002R\u0019\u0010\u00cb\u0002\u001a\u00020\u001a8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u00a0\u0001\u0010\u0089\u0001\u00a8\u0006\u00cc\u0002"
    }
    d2 = {
        "Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;",
        "Landroidx/constraintlayout/widget/ConstraintLayout;",
        "Lcom/transsion/player/orplayer/f;",
        "Landroid/view/View$OnClickListener;",
        "Landroidx/lifecycle/r;",
        "Lcom/transsion/shorttv/ui/widget/d;",
        "Lcom/transsion/subtitle_download/a;",
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
        "Ljs/e;",
        "item",
        "Lcom/transsion/shorttv/ui/fragment/ShortTvDetailListFragment;",
        "fragment",
        "position",
        "",
        "videoLoadMore",
        "",
        "basePostId",
        "baseItemType",
        "isPayloads",
        "fromTrending",
        "setData",
        "(Ljs/e;Lcom/transsion/shorttv/ui/fragment/ShortTvDetailListFragment;Ljava/lang/Integer;ZLjava/lang/String;Ljava/lang/String;ZZ)V",
        "Lcom/transsion/player/orplayer/g;",
        "orPlayer",
        "Lcom/transsion/player/ui/ORPlayerView;",
        "orPlayerView",
        "onPageSelected",
        "(Lcom/transsion/player/orplayer/g;Lcom/transsion/player/ui/ORPlayerView;Ljs/e;)V",
        "updateShortTvInfo",
        "onPageRelease",
        "(I)V",
        "width",
        "height",
        "onVideoSizeChanged",
        "(II)V",
        "updateLockState",
        "(Ljs/e;)V",
        "Lcom/transsion/shorttv/base/pager/PagerLayoutManager;",
        "pagerLayoutManager",
        "setPagerLayoutManager",
        "(Lcom/transsion/shorttv/base/pager/PagerLayoutManager;)V",
        "Landroid/widget/FrameLayout;",
        "getPlayerContainer",
        "()Landroid/widget/FrameLayout;",
        "Landroidx/fragment/app/FragmentActivity;",
        "activity",
        "Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;",
        "getViewModel",
        "(Landroidx/fragment/app/FragmentActivity;)Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;",
        "hasWindowFocus",
        "onWindowFocusChanged",
        "(Z)V",
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
        "onMediaItemTransition",
        "reset",
        "app2Background",
        "pageFrom",
        "videoStartPrepare",
        "(Ljava/lang/String;)V",
        "url",
        "setVideoUrl",
        "onSetDataSource",
        "onRenderFirstFrame",
        "Lao/e;",
        "mediaSource",
        "onVideoStart",
        "(Lao/e;)V",
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
        "Landroid/view/View;",
        "v",
        "onClick",
        "(Landroid/view/View;)V",
        "showEpisodeListDialog",
        "getProgress",
        "()J",
        "remaining",
        "updateUnlockCountdownText$shortTvLib_release",
        "(Ljava/lang/Integer;)V",
        "updateUnlockCountdownText",
        "isAuto",
        "watchAdToUnlock$shortTvLib_release",
        "watchAdToUnlock",
        "onNetConnect",
        "onGetDubsInfo",
        "onAudioTrackChange",
        "Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;",
        "stDownloadTable",
        "onDownloading",
        "(ILcom/transsion/subtitle_download/db/SubtitleDownloadTable;)V",
        "onComplete",
        "(Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;)V",
        "Ljava/lang/Exception;",
        "Lkotlin/Exception;",
        "e",
        "dbBean",
        "onFail",
        "(Ljava/lang/Exception;Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;)V",
        "T0",
        "Ljs/f;",
        "result",
        "U",
        "(Ljs/f;)V",
        "Z",
        "Y",
        "Q0",
        "isImmersive",
        "Y0",
        "w",
        "h",
        "Z0",
        "(Ljava/lang/Integer;Ljava/lang/Integer;)V",
        "ep",
        "Lcom/transsion/shorttv/bean/Subject;",
        "subject",
        "Lcom/transsion/shorttv/bean/ShortTVItem;",
        "I0",
        "(Ljava/lang/String;Lcom/transsion/shorttv/bean/Subject;Lcom/transsion/shorttv/bean/ShortTVItem;Z)V",
        "b1",
        "V0",
        "(J)V",
        "max",
        "W0",
        "v0",
        "H0",
        "O0",
        "a0",
        "show",
        "setLoading",
        "view",
        "B0",
        "e0",
        "X",
        "L",
        "P0",
        "Lcom/transsion/shorttv/bean/Video;",
        "video",
        "I",
        "(Lcom/transsion/player/ui/ORPlayerView;Lcom/transsion/shorttv/bean/Video;)V",
        "R0",
        "S0",
        "K0",
        "W",
        "J",
        "(Landroid/view/View;Lcom/transsion/shorttv/bean/Subject;)V",
        "K",
        "J0",
        "V",
        "time",
        "Landroid/text/SpannableString;",
        "N",
        "(Ljava/lang/String;)Landroid/text/SpannableString;",
        "remainingMs",
        "U0",
        "O",
        "userId",
        "Q",
        "h0",
        "C0",
        "g0",
        "z0",
        "b0",
        "x0",
        "q0",
        "E0",
        "Lts/b;",
        "G0",
        "(Lts/b;)V",
        "Lcom/transsion/shorttv/bean/DubsInfo;",
        "info",
        "s0",
        "(Lcom/transsion/shorttv/bean/DubsInfo;)V",
        "S",
        "j0",
        "()Z",
        "i0",
        "o0",
        "k0",
        "a",
        "Ljava/lang/String;",
        "TAG",
        "b",
        "screenWidth",
        "Lms/k0;",
        "c",
        "Lms/k0;",
        "viewBinding",
        "d",
        "Ljs/e;",
        "data",
        "Lcom/transsion/shorttv/bean/Subject;",
        "shortTvInfo",
        "f",
        "Lcom/transsion/shorttv/ui/fragment/ShortTvDetailListFragment;",
        "g",
        "Ljava/lang/Boolean;",
        "Ljava/lang/Integer;",
        "i",
        "j",
        "Lcom/transsion/player/orplayer/g;",
        "k",
        "Lcom/transsion/player/ui/ORPlayerView;",
        "l",
        "Lcom/transsion/shorttv/base/pager/PagerLayoutManager;",
        "Landroid/view/GestureDetector;",
        "m",
        "Landroid/view/GestureDetector;",
        "gestureDetector",
        "Lss/c;",
        "n",
        "Lss/c;",
        "dotLayer",
        "o",
        "isClickPause",
        "p",
        "isHorizontalDragging",
        "q",
        "isPageHide",
        "r",
        "currentSaveProgress",
        "s",
        "isFirstPlayInSession",
        "setFirstPlayInSession",
        "Lcom/transsion/shorttv/ui/widget/c;",
        "t",
        "Lcom/transsion/shorttv/ui/widget/c;",
        "downloadGuideBubbleController",
        "u",
        "resImgLargeWidth",
        "resImgLargeHeight",
        "resImgSmallWidth",
        "x",
        "resImgSmallHeight",
        "y",
        "z",
        "Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;",
        "mShortTvViewModel",
        "Lws/a;",
        "A",
        "Lws/a;",
        "mShortTvSubViewModel",
        "B",
        "videoWidth",
        "C",
        "videoHeight",
        "Lcom/transsion/shorttv/subtitle/a;",
        "D",
        "Lcom/transsion/shorttv/subtitle/a;",
        "subtitleControl",
        "Landroidx/constraintlayout/widget/Group;",
        "E",
        "Landroidx/constraintlayout/widget/Group;",
        "groupContent",
        "F",
        "isOptimizeEnable",
        "G",
        "hasAd",
        "Landroidx/lifecycle/c0;",
        "H",
        "Landroidx/lifecycle/c0;",
        "observer",
        "favoriteObserver",
        "com/transsion/shorttv/ui/widget/ShortTvVideoItemView$d",
        "Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView$d;",
        "favoriteResultObserver",
        "isFirstFrame",
        "isPrepare",
        "Ljava/lang/Runnable;",
        "Lkotlinx/coroutines/Runnable;",
        "M",
        "Ljava/lang/Runnable;",
        "delayToastNetErrRunnable",
        "isLoading",
        "Landroid/os/Handler;",
        "Landroid/os/Handler;",
        "autoHideRightMenuHandle",
        "P",
        "autoHideRightMenuRunnable",
        "watchAdUnlockSeconds",
        "R",
        "Landroid/view/View;",
        "lockedView",
        "isEpisodeLocked",
        "Lcom/transsion/shorttv/ad/common/STCommonVideoAdHelper;",
        "T",
        "Lcom/transsion/shorttv/ad/common/STCommonVideoAdHelper;",
        "videoAdHelper",
        "isFreePreviewMode",
        "Lcom/transsion/shorttv/ui/widget/a1;",
        "Lcom/transsion/shorttv/ui/widget/a1;",
        "getCountdownController",
        "()Lcom/transsion/shorttv/ui/widget/a1;",
        "setCountdownController",
        "(Lcom/transsion/shorttv/ui/widget/a1;)V",
        "countdownController",
        "Lts/b;",
        "subDownloadBean",
        "hasSubDownloading",
        "shortTvLib_release"
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
.field private A:Lws/a;

.field private B:I

.field private C:I

.field private D:Lcom/transsion/shorttv/subtitle/a;

.field private E:Landroidx/constraintlayout/widget/Group;

.field private final F:Z

.field private G:Z

.field private final H:Landroidx/lifecycle/c0;

.field private final I:Landroidx/lifecycle/c0;

.field private final J:Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView$d;

.field private K:Z

.field private L:Z

.field private final M:Ljava/lang/Runnable;

.field private N:Z

.field private final O:Landroid/os/Handler;

.field private final P:Ljava/lang/Runnable;

.field private Q:Ljava/lang/Integer;

.field private R:Landroid/view/View;

.field private S:Z

.field private T:Lcom/transsion/shorttv/ad/common/STCommonVideoAdHelper;

.field private U:Z

.field private V:Lcom/transsion/shorttv/ui/widget/a1;

.field private W:Lts/b;

.field private final a:Ljava/lang/String;

.field private a0:Z

.field private final b:I

.field private final c:Lms/k0;

.field private d:Ljs/e;

.field private e:Lcom/transsion/shorttv/bean/Subject;

.field private f:Lcom/transsion/shorttv/ui/fragment/ShortTvDetailListFragment;

.field private g:Ljava/lang/Boolean;

.field private h:Ljava/lang/Integer;

.field private i:Ljava/lang/String;

.field private j:Lcom/transsion/player/orplayer/g;

.field private k:Lcom/transsion/player/ui/ORPlayerView;

.field private l:Lcom/transsion/shorttv/base/pager/PagerLayoutManager;

.field private m:Landroid/view/GestureDetector;

.field private n:Lss/c;

.field private o:Z

.field private p:Z

.field private q:Z

.field private r:J

.field private s:Z

.field private t:Lcom/transsion/shorttv/ui/widget/c;

.field private final u:I

.field private final v:I

.field private final w:I

.field private final x:I

.field private y:Ljava/lang/String;

.field private z:Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2, p3}, Landroidx/constraintlayout/widget/ConstraintLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const-string p2, "ShortTv-Imm"

    iput-object p2, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->a:Ljava/lang/String;

    invoke-static {}, Lcom/blankj/utilcode/util/y;->e()I

    move-result p2

    iput p2, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->b:I

    const-string p2, ""

    iput-object p2, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->y:Ljava/lang/String;

    sget-object p3, Llr/a;->a:Llr/a;

    invoke-virtual {p3}, Llr/a;->c()Z

    move-result p3

    iput-boolean p3, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->F:Z

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p3

    sget v0, Lcom/transsion/shorttv/R$layout;->short_tv_layout_video_item_view:I

    invoke-static {p3, v0, p0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    invoke-static {p0}, Lms/k0;->a(Landroid/view/View;)Lms/k0;

    move-result-object p3

    const-string v0, "bind(...)"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p3, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->c:Lms/k0;

    iget-object v0, p3, Lms/k0;->y:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-static {}, Lcom/blankj/utilcode/util/d;->c()I

    move-result p2

    iget-object v0, p3, Lms/k0;->v:Landroidx/constraintlayout/widget/ConstraintLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p2, v1, v1}, Landroid/view/View;->setPadding(IIII)V

    iget-object v0, p3, Lms/k0;->H:Lcom/noober/background/view/BLTextView;

    const-string v1, "tvWatchFreeCountdown"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    if-eqz v1, :cond_9

    check-cast v1, Landroidx/constraintlayout/widget/ConstraintLayout$b;

    const/high16 v2, 0x41200000    # 10.0f

    invoke-static {v2}, Lcom/blankj/utilcode/util/a0;->a(F)I

    move-result v2

    add-int/2addr p2, v2

    iput p2, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object p2, p3, Lms/k0;->j:Landroidx/appcompat/widget/AppCompatImageView;

    invoke-virtual {p2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p2, p3, Lms/k0;->z:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {p2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p2, p3, Lms/k0;->y:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {p2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p2, p3, Lms/k0;->n:Landroidx/appcompat/widget/AppCompatImageView;

    invoke-virtual {p2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p2, p3, Lms/k0;->m:Landroidx/appcompat/widget/AppCompatImageView;

    invoke-virtual {p2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p2, p3, Lms/k0;->l:Landroidx/appcompat/widget/AppCompatImageView;

    invoke-virtual {p2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p2, p3, Lms/k0;->o:Lcom/google/android/material/imageview/ShapeableImageView;

    invoke-virtual {p2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p2, p3, Lms/k0;->B:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {p2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p2, p3, Lms/k0;->E:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {p2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p2, p3, Lms/k0;->A:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {p2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p2, p3, Lms/k0;->w:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {p2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p2, p3, Lms/k0;->F:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {p2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p2, p3, Lms/k0;->D:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {p2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/high16 p2, 0x42400000    # 48.0f

    invoke-static {p2}, Lcom/blankj/utilcode/util/a0;->a(F)I

    move-result p2

    iput p2, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->u:I

    const/high16 p2, 0x42800000    # 64.0f

    invoke-static {p2}, Lcom/blankj/utilcode/util/a0;->a(F)I

    move-result p2

    iput p2, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->v:I

    const/high16 p2, 0x41c00000    # 24.0f

    invoke-static {p2}, Lcom/blankj/utilcode/util/a0;->a(F)I

    move-result p2

    iput p2, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->w:I

    const/high16 p2, 0x42000000    # 32.0f

    invoke-static {p2}, Lcom/blankj/utilcode/util/a0;->a(F)I

    move-result p2

    iput p2, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->x:I

    sget-object p2, Llr/c;->a:Llr/c;

    invoke-virtual {p2}, Llr/c;->b()Llr/b;

    move-result-object p2

    invoke-virtual {p2}, Llr/b;->d()Llr/b$d;

    move-result-object p2

    invoke-interface {p2}, Llr/b$d;->c()Z

    move-result p2

    if-eqz p2, :cond_0

    iget-object p2, p3, Lms/k0;->n:Landroidx/appcompat/widget/AppCompatImageView;

    const-string v0, "ivShare"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p2}, Lyr/b;->b(Landroid/view/View;)V

    iget-object p2, p3, Lms/k0;->z:Landroidx/appcompat/widget/AppCompatTextView;

    const-string v0, "tvFavorite"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p2}, Lyr/b;->b(Landroid/view/View;)V

    iget-object p2, p3, Lms/k0;->g:Landroidx/constraintlayout/widget/Group;

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    iget-object p2, p3, Lms/k0;->h:Landroidx/constraintlayout/widget/Group;

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    :goto_0
    iput-object p2, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->E:Landroidx/constraintlayout/widget/Group;

    invoke-direct {p0, p1}, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->Z(Landroid/content/Context;)V

    invoke-direct {p0}, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->a0()V

    new-instance p1, Lcom/transsion/shorttv/ui/widget/q0;

    invoke-direct {p1, p0}, Lcom/transsion/shorttv/ui/widget/q0;-><init>(Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;)V

    iput-object p1, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->H:Landroidx/lifecycle/c0;

    new-instance p1, Lcom/transsion/shorttv/ui/widget/r0;

    invoke-direct {p1, p0}, Lcom/transsion/shorttv/ui/widget/r0;-><init>(Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;)V

    iput-object p1, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->I:Landroidx/lifecycle/c0;

    new-instance p1, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView$d;

    invoke-direct {p1, p0}, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView$d;-><init>(Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;)V

    iput-object p1, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->J:Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView$d;

    new-instance p1, Lcom/transsion/shorttv/ui/widget/s0;

    invoke-direct {p1, p0}, Lcom/transsion/shorttv/ui/widget/s0;-><init>(Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;)V

    iput-object p1, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->M:Ljava/lang/Runnable;

    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    invoke-direct {p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->O:Landroid/os/Handler;

    new-instance p1, Lcom/transsion/shorttv/ui/widget/t0;

    invoke-direct {p1, p0}, Lcom/transsion/shorttv/ui/widget/t0;-><init>(Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;)V

    iput-object p1, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->P:Ljava/lang/Runnable;

    sget-object p1, Lur/a;->a:Lur/a;

    const-string p1, "autoWatchAdCountDown"

    const-string p2, "ShortTvPlayerUnlockPlayScene"

    const/4 p3, 0x0

    :try_start_0
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    sget-object v0, Lcom/transsion/ad/scene/d;->a:Lcom/transsion/ad/scene/d;

    invoke-virtual {v0, p2}, Lcom/transsion/ad/scene/d;->b(Ljava/lang/String;)Lcom/google/gson/JsonObject;

    move-result-object p2

    if-eqz p2, :cond_1

    invoke-virtual {p2, p1}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object p1

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_5

    :cond_1
    move-object p1, p3

    :goto_1
    const-class p2, Ljava/lang/Integer;

    invoke-static {p2}, Lkotlin/jvm/internal/Reflection;->b(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object p2

    const-class v0, Ljava/lang/String;

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->b(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v0

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    :cond_2
    :goto_2
    move-object p1, p3

    goto :goto_4

    :cond_3
    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->b(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v0

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Lcom/google/gson/JsonElement;->getAsInt()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    goto :goto_3

    :cond_4
    move-object p1, p3

    :goto_3
    instance-of p2, p1, Ljava/lang/Integer;

    if-nez p2, :cond_7

    goto :goto_2

    :cond_5
    sget-object v0, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->b(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v0

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/google/gson/JsonElement;->getAsLong()J

    goto :goto_2

    :cond_6
    sget-object v0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->b(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v0

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/google/gson/JsonElement;->getAsBoolean()Z

    goto :goto_2

    :cond_7
    :goto_4
    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_6

    :goto_5
    sget-object p2, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {p1}, Lkotlin/ResultKt;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    :goto_6
    invoke-static {p1}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p2

    if-nez p2, :cond_8

    move-object p3, p1

    :cond_8
    check-cast p3, Ljava/lang/Integer;

    iput-object p3, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->Q:Ljava/lang/Integer;

    return-void

    :cond_9
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "null cannot be cast to non-null type androidx.constraintlayout.widget.ConstraintLayout.LayoutParams"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static synthetic A(Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;Z)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->c0(Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;Z)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method private static final A0(Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;Lkotlin/jvm/internal/Ref$IntRef;Lcom/transsion/shorttv/bean/ShortTVItem;Lcom/transsion/shorttv/utils/ShortTvVideoCtrBean;)Lkotlin/Unit;
    .locals 12

    const-string v0, "clickItem"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->L()V

    invoke-virtual {p3}, Lcom/transsion/shorttv/utils/ShortTvVideoCtrBean;->getContent()F

    move-result v0

    iget p1, p1, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    int-to-float p1, p1

    cmpg-float p1, p1, v0

    if-nez p1, :cond_0

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :cond_0
    sget-object p1, Lcom/transsion/shorttv/utils/h;->a:Lcom/transsion/shorttv/utils/h;

    invoke-virtual {p1}, Lcom/transsion/shorttv/utils/h;->d()Lcom/tencent/mmkv/MMKV;

    move-result-object p1

    invoke-virtual {p3}, Lcom/transsion/shorttv/utils/ShortTvVideoCtrBean;->getContent()F

    move-result v1

    float-to-int v1, v1

    const-string v2, "k_short_tv_resolution"

    invoke-virtual {p1, v2, v1}, Lcom/tencent/mmkv/MMKV;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    iget-object p1, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->c:Lms/k0;

    iget-object p1, p1, Lms/k0;->D:Landroidx/appcompat/widget/AppCompatTextView;

    float-to-int v1, v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "P"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p2}, Lcom/transsion/shorttv/bean/ShortTVItem;->getVideo()Lcom/transsion/shorttv/bean/Media;

    move-result-object p1

    const/4 p2, 0x0

    const/4 v1, 0x0

    if-eqz p1, :cond_d

    invoke-virtual {p1}, Lcom/transsion/shorttv/bean/Media;->getAddressList()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_d

    check-cast p1, Ljava/lang/Iterable;

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lcom/transsion/shorttv/bean/Video;

    invoke-virtual {v3}, Lcom/transsion/shorttv/bean/Video;->getResolution()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-static {v3}, Lkotlin/text/StringsKt;->v(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    goto :goto_0

    :cond_2
    move v3, v1

    :goto_0
    invoke-virtual {p3}, Lcom/transsion/shorttv/utils/ShortTvVideoCtrBean;->getContent()F

    move-result v4

    float-to-int v4, v4

    if-ne v3, v4, :cond_1

    goto :goto_1

    :cond_3
    move-object v2, p2

    :goto_1
    check-cast v2, Lcom/transsion/shorttv/bean/Video;

    if-eqz v2, :cond_d

    new-instance p1, Lao/e;

    invoke-virtual {v2}, Lcom/transsion/shorttv/bean/Video;->getUrl()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2}, Lcom/transsion/shorttv/bean/Video;->getUrl()Ljava/lang/String;

    move-result-object v3

    const-string v11, ""

    if-nez v3, :cond_4

    move-object v5, v11

    goto :goto_2

    :cond_4
    move-object v5, v3

    :goto_2
    iget-object v3, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->d:Ljs/e;

    if-eqz v3, :cond_5

    invoke-virtual {v3}, Ljs/e;->d()Lcom/transsion/shorttv/bean/ShortTVItem;

    move-result-object v3

    if-eqz v3, :cond_5

    invoke-virtual {v3}, Lcom/transsion/shorttv/bean/ShortTVItem;->getEp()I

    move-result v3

    move v6, v3

    goto :goto_3

    :cond_5
    move v6, v1

    :goto_3
    const/16 v9, 0x18

    const/4 v10, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v3, p1

    invoke-direct/range {v3 .. v10}, Lao/e;-><init>(Ljava/lang/String;Ljava/lang/String;ILcom/transsion/player/enum/PlayMimeType;Lcom/transsion/player/mediasession/MediaItem;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iget-object v3, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->j:Lcom/transsion/player/orplayer/g;

    instance-of v4, v3, Llo/f;

    if-eqz v4, :cond_6

    check-cast v3, Llo/f;

    goto :goto_4

    :cond_6
    move-object v3, p2

    :goto_4
    if-eqz v3, :cond_7

    invoke-interface {v3}, Llo/f;->a()Ljava/util/Map;

    move-result-object v3

    if-eqz v3, :cond_7

    invoke-virtual {p1}, Lao/e;->e()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    goto :goto_5

    :cond_7
    move v3, v1

    :goto_5
    sget-object v4, Llg/a;->a:Llg/a$a;

    iget-object v5, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->a:Ljava/lang/String;

    invoke-virtual {p3}, Lcom/transsion/shorttv/utils/ShortTvVideoCtrBean;->getContent()F

    move-result p3

    iget-object v6, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->d:Ljs/e;

    if-eqz v6, :cond_8

    invoke-virtual {v6}, Ljs/e;->d()Lcom/transsion/shorttv/bean/ShortTVItem;

    move-result-object v6

    if-eqz v6, :cond_8

    invoke-virtual {v6}, Lcom/transsion/shorttv/bean/ShortTVItem;->getEp()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    goto :goto_6

    :cond_8
    move-object v6, p2

    :goto_6
    invoke-virtual {v2}, Lcom/transsion/shorttv/bean/Video;->getUrl()Ljava/lang/String;

    move-result-object v2

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "resolution play, res:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p3, ", EP:"

    invoke-virtual {v7, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p3, ", inList:"

    invoke-virtual {v7, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p3, ", url:"

    invoke-virtual {v7, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v8, 0x4

    const/4 v9, 0x0

    const/4 v7, 0x0

    invoke-static/range {v4 .. v9}, Llg/a$a;->f(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    iget-object p3, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->j:Lcom/transsion/player/orplayer/g;

    if-eqz p3, :cond_9

    invoke-interface {p3}, Lcom/transsion/player/orplayer/g;->getCurrentPosition()J

    move-result-wide v4

    goto :goto_7

    :cond_9
    const-wide/16 v4, 0x0

    :goto_7
    if-nez v3, :cond_b

    iget-object p3, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->j:Lcom/transsion/player/orplayer/g;

    if-eqz p3, :cond_a

    invoke-interface {p3, p1}, Lcom/transsion/player/orplayer/g;->addDataSource(Lao/e;)Z

    :cond_a
    iget-object p3, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->j:Lcom/transsion/player/orplayer/g;

    if-eqz p3, :cond_b

    invoke-interface {p3}, Lcom/transsion/player/orplayer/g;->prepare()V

    :cond_b
    iget-object p3, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->j:Lcom/transsion/player/orplayer/g;

    if-eqz p3, :cond_d

    invoke-virtual {p1}, Lao/e;->e()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_c

    goto :goto_8

    :cond_c
    move-object v11, p1

    :goto_8
    invoke-interface {p3, v11, v4, v5}, Lcom/transsion/player/orplayer/g;->seekTo(Ljava/lang/String;J)V

    :cond_d
    iget-object p1, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->z:Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;

    if-eqz p1, :cond_10

    invoke-static {v0}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object p3

    iget-object v0, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->d:Ljs/e;

    if-eqz v0, :cond_e

    invoke-virtual {v0}, Ljs/e;->d()Lcom/transsion/shorttv/bean/ShortTVItem;

    move-result-object v0

    if-eqz v0, :cond_e

    invoke-virtual {v0}, Lcom/transsion/shorttv/bean/ShortTVItem;->getEp()I

    move-result v1

    :cond_e
    iget-object p0, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->j:Lcom/transsion/player/orplayer/g;

    instance-of v0, p0, Llo/f;

    if-eqz v0, :cond_f

    move-object p2, p0

    check-cast p2, Llo/f;

    :cond_f
    invoke-virtual {p1, p3, v1, p2}, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;->W0(Ljava/lang/String;ILlo/f;)V

    :cond_10
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method

.method public static synthetic B(Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->L0(Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;Landroid/view/View;)V

    return-void
.end method

.method private final B0(Landroid/view/View;)V
    .locals 8

    iget-object p1, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->z:Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;->H0()Landroidx/lifecycle/LiveData;

    move-result-object p1

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Landroidx/lifecycle/LiveData;->f()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/transsion/shorttv/bean/Subject;

    if-nez p1, :cond_0

    goto :goto_1

    :cond_0
    sget-object v0, Lss/b;->a:Lss/b;

    invoke-virtual {p1}, Lcom/transsion/shorttv/bean/Subject;->getSubjectId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/transsion/shorttv/bean/Subject;->getOps()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->d:Ljs/e;

    const/4 v7, 0x0

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Ljs/e;->c()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    goto :goto_0

    :cond_1
    move-object v3, v7

    :goto_0
    const/16 v5, 0x8

    const/4 v6, 0x0

    const/4 v4, 0x0

    invoke-static/range {v0 .. v6}, Lss/b;->n(Lss/b;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->z:Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;->C0()Lqs/k;

    move-result-object v0

    if-eqz v0, :cond_5

    iget-object v1, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->f:Lcom/transsion/shorttv/ui/fragment/ShortTvDetailListFragment;

    invoke-virtual {p1}, Lcom/transsion/shorttv/bean/Subject;->getSubjectId()Ljava/lang/String;

    move-result-object p1

    iget-object v2, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->e:Lcom/transsion/shorttv/bean/Subject;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Lcom/transsion/shorttv/bean/Subject;->getTitle()Ljava/lang/String;

    move-result-object v7

    :cond_2
    iget-object v2, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->f:Lcom/transsion/shorttv/ui/fragment/ShortTvDetailListFragment;

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Lcom/transsion/shorttv/ui/fragment/ShortTvDetailListFragment;->getPageName()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_4

    :cond_3
    const-string v2, ""

    :cond_4
    invoke-interface {v0, v1, p1, v7, v2}, Lqs/k;->a(Landroidx/fragment/app/Fragment;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    :goto_1
    return-void
.end method

.method public static synthetic C(Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;Ljs/e;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->d1(Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;Ljs/e;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method private final C0()V
    .locals 6

    sget-object v0, Llg/a;->a:Llg/a$a;

    iget-object v1, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->a:Ljava/lang/String;

    const/4 v4, 0x4

    const/4 v5, 0x0

    const-string v2, "VideoSpeed, click"

    const/4 v3, 0x0

    invoke-static/range {v0 .. v5}, Llg/a$a;->f(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    invoke-direct {p0}, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->P0()V

    sget-object v0, Lcom/transsion/shorttv/utils/h;->a:Lcom/transsion/shorttv/utils/h;

    invoke-virtual {v0}, Lcom/transsion/shorttv/utils/h;->d()Lcom/tencent/mmkv/MMKV;

    move-result-object v0

    const-string v1, "k_short_tv_speed"

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1, v2}, Lcom/tencent/mmkv/MMKV;->getFloat(Ljava/lang/String;F)F

    move-result v0

    invoke-static {}, Lcom/transsion/shorttv/utils/l;->b()Ljava/util/List;

    move-result-object v1

    check-cast v1, Ljava/lang/Iterable;

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/transsion/shorttv/utils/ShortTvVideoCtrBean;

    invoke-virtual {v2}, Lcom/transsion/shorttv/utils/ShortTvVideoCtrBean;->getContent()F

    move-result v3

    cmpg-float v3, v3, v0

    if-nez v3, :cond_0

    const/4 v3, 0x1

    goto :goto_1

    :cond_0
    const/4 v3, 0x0

    :goto_1
    invoke-virtual {v2, v3}, Lcom/transsion/shorttv/utils/ShortTvVideoCtrBean;->setSelect(Z)V

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->c:Lms/k0;

    iget-object v1, v1, Lms/k0;->E:Landroidx/appcompat/widget/AppCompatTextView;

    const-string v2, "tvSpeed"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/transsion/shorttv/utils/l;->b()Ljava/util/List;

    move-result-object v2

    new-instance v3, Lcom/transsion/shorttv/ui/widget/l0;

    invoke-direct {v3, p0, v0}, Lcom/transsion/shorttv/ui/widget/l0;-><init>(Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;F)V

    invoke-static {v1, v2, v3}, Lcom/transsion/shorttv/utils/l;->c(Landroid/view/View;Ljava/util/List;Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method public static synthetic D(Lcom/transsion/shorttv/ad/playeroverlayad/a;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0}, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->m0(Lcom/transsion/shorttv/ad/playeroverlayad/a;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method private static final D0(Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;FLcom/transsion/shorttv/utils/ShortTvVideoCtrBean;)Lkotlin/Unit;
    .locals 2

    const-string v0, "clickItem"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->L()V

    invoke-virtual {p2}, Lcom/transsion/shorttv/utils/ShortTvVideoCtrBean;->getContent()F

    move-result p2

    cmpg-float p1, p1, p2

    if-nez p1, :cond_0

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :cond_0
    sget-object p1, Lcom/transsion/shorttv/utils/h;->a:Lcom/transsion/shorttv/utils/h;

    invoke-virtual {p1}, Lcom/transsion/shorttv/utils/h;->d()Lcom/tencent/mmkv/MMKV;

    move-result-object p1

    const-string v0, "k_short_tv_speed"

    invoke-virtual {p1, v0, p2}, Lcom/tencent/mmkv/MMKV;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    float-to-int p1, p2

    int-to-float v0, p1

    cmpg-float v0, v0, p2

    if-nez v0, :cond_1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_1
    invoke-static {p2}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object p1

    :goto_0
    iget-object v0, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->c:Lms/k0;

    iget-object v0, v0, Lms/k0;->E:Landroidx/appcompat/widget/AppCompatTextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "x"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p0, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->j:Lcom/transsion/player/orplayer/g;

    if-eqz p0, :cond_2

    invoke-interface {p0, p2}, Lcom/transsion/player/orplayer/g;->setSpeed(F)V

    :cond_2
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method

.method public static synthetic E(Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->u0(Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;)V

    return-void
.end method

.method private final E0()V
    .locals 3

    sget-object v0, Lnh/m;->a:Lnh/m;

    invoke-virtual {v0}, Lnh/m;->e()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lfs/b;->a:Lfs/b$a;

    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    move-result-object v1

    sget v2, Lcom/transsion/shorttv/R$string;->short_tv_no_network_toast:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfs/b$a;->e(Ljava/lang/CharSequence;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->A:Lws/a;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lws/a;->d()Landroidx/lifecycle/b0;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->f()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    check-cast v0, Ljava/util/Collection;

    if-eqz v0, :cond_4

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    new-instance v0, Lcom/transsion/shorttv/ui/dialog/ShortTvLanguageSelectDialog;

    invoke-direct {v0}, Lcom/transsion/shorttv/ui/dialog/ShortTvLanguageSelectDialog;-><init>()V

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/transsion/shorttv/ui/dialog/ShortTvLanguageSelectDialog;->D0(I)V

    new-instance v1, Lcom/transsion/shorttv/ui/widget/d0;

    invoke-direct {v1, p0}, Lcom/transsion/shorttv/ui/widget/d0;-><init>(Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;)V

    invoke-virtual {v0, v1}, Lcom/transsion/shorttv/ui/dialog/ShortTvLanguageSelectDialog;->C0(Lkotlin/jvm/functions/Function1;)V

    iget-object v1, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->f:Lcom/transsion/shorttv/ui/fragment/ShortTvDetailListFragment;

    if-eqz v1, :cond_3

    const-string v2, "ShortTvLanguageSelectDialog_Subtitle"

    invoke-virtual {v0, v1, v2}, Lcom/transsion/shorttv/base/dialog/BaseDialog;->j0(Landroidx/fragment/app/Fragment;Ljava/lang/String;)V

    :cond_3
    return-void

    :cond_4
    :goto_1
    sget-object v0, Lfs/b;->a:Lfs/b$a;

    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    move-result-object v1

    sget v2, Lcom/transsion/shorttv/R$string;->short_tv_no_error_content:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfs/b$a;->e(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public static synthetic F(Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;)V
    .locals 0

    invoke-static {p0}, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->M(Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;)V

    return-void
.end method

.method private static final F0(Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;Lcom/transsion/shorttv/bean/DubsInfo;)Lkotlin/Unit;
    .locals 2

    const-string v0, "item"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/transsion/shorttv/bean/DubsInfo;->getLanCode()Ljava/lang/String;

    move-result-object v0

    const-string v1, "off"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->D:Lcom/transsion/shorttv/subtitle/a;

    if-eqz p0, :cond_1

    invoke-interface {p0}, Lcom/transsion/shorttv/subtitle/a;->f()V

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/transsion/shorttv/bean/DubsInfo;->getSubInfo()Lts/b;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-direct {p0, p1}, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->G0(Lts/b;)V

    :cond_1
    :goto_0
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method

.method public static synthetic G(Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;Ljava/lang/Integer;Ljava/lang/Integer;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->a1(Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;Ljava/lang/Integer;Ljava/lang/Integer;)V

    return-void
.end method

.method private final G0(Lts/b;)V
    .locals 6

    sget-object v0, Llg/a;->a:Llg/a$a;

    iget-object v1, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->a:Ljava/lang/String;

    const/4 v4, 0x4

    const/4 v5, 0x0

    const-string v2, "onSubtitleSelect"

    const/4 v3, 0x0

    invoke-static/range {v0 .. v5}, Llg/a$a;->f(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    sget-object v0, Lcom/transsion/shorttv/utils/h;->a:Lcom/transsion/shorttv/utils/h;

    invoke-virtual {v0}, Lcom/transsion/shorttv/utils/h;->d()Lcom/tencent/mmkv/MMKV;

    move-result-object v0

    invoke-virtual {p1}, Lts/b;->a()Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;

    move-result-object v1

    invoke-virtual {v1}, Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;->getLanName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "k_subtitle_language"

    invoke-virtual {v0, v2, v1}, Lcom/tencent/mmkv/MMKV;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    sget-object v0, Lcom/transsion/subtitle_download/utils/d;->a:Lcom/transsion/subtitle_download/utils/d;

    invoke-virtual {v0}, Lcom/transsion/subtitle_download/utils/d;->b()Lcom/tencent/mmkv/MMKV;

    move-result-object v0

    invoke-virtual {p1}, Lts/b;->a()Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;

    move-result-object v1

    invoke-virtual {v1}, Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;->getLan()Ljava/lang/String;

    move-result-object v1

    const-string v2, "k_subtitle_select_lan"

    invoke-virtual {v0, v2, v1}, Lcom/tencent/mmkv/MMKV;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-virtual {p1}, Lts/b;->b()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0, p1}, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->S(Lts/b;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->D:Lcom/transsion/shorttv/subtitle/a;

    if-eqz v0, :cond_1

    invoke-interface {v0, p1}, Lcom/transsion/shorttv/subtitle/a;->h(Lts/b;)V

    :cond_1
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->W:Lts/b;

    return-void
.end method

.method public static synthetic H(Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;)V
    .locals 0

    invoke-static {p0}, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->t0(Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;)V

    return-void
.end method

.method private final H0()V
    .locals 7

    sget-object v6, Llg/a;->a:Llg/a$a;

    iget-object v1, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->a:Ljava/lang/String;

    iget-object v0, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->d:Ljs/e;

    iget-object v2, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->j:Lcom/transsion/player/orplayer/g;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "playVideo   data:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, "  orPlayer:"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x4

    const/4 v5, 0x0

    const/4 v3, 0x0

    move-object v0, v6

    invoke-static/range {v0 .. v5}, Llg/a$a;->f(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    iget-object v0, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->j:Lcom/transsion/player/orplayer/g;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->d:Ljs/e;

    invoke-static {v0}, Ljs/l;->b(Ljs/e;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->j:Lcom/transsion/player/orplayer/g;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->d:Ljs/e;

    invoke-static {v0}, Ljs/l;->b(Ljs/e;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    invoke-direct {p0}, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->i0()Z

    move-result v0

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->U:Z

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->a:Ljava/lang/String;

    const/4 v4, 0x4

    const/4 v5, 0x0

    const-string v2, "player- no free now, show pay dialog"

    const/4 v3, 0x0

    move-object v0, v6

    invoke-static/range {v0 .. v5}, Llg/a$a;->f(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->setLoading(Z)V

    iget-object v0, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->j:Lcom/transsion/player/orplayer/g;

    if-eqz v0, :cond_6

    invoke-interface {v0}, Lcom/transsion/player/orplayer/g;->pause()V

    goto :goto_1

    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->j:Lcom/transsion/player/orplayer/g;

    if-eqz v0, :cond_4

    invoke-interface {v0}, Lcom/transsion/player/orplayer/g;->isComplete()Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_4

    iget-object v0, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->j:Lcom/transsion/player/orplayer/g;

    if-eqz v0, :cond_4

    const-wide/16 v1, 0x0

    invoke-interface {v0, v1, v2}, Lcom/transsion/player/orplayer/g;->seekTo(J)V

    :cond_4
    iget-object v0, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->j:Lcom/transsion/player/orplayer/g;

    if-eqz v0, :cond_5

    invoke-interface {v0}, Lcom/transsion/player/orplayer/g;->play()V

    :cond_5
    iget-object v1, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->a:Ljava/lang/String;

    const/4 v4, 0x4

    const/4 v5, 0x0

    const-string v2, "player- startplay    "

    const/4 v3, 0x0

    move-object v0, v6

    invoke-static/range {v0 .. v5}, Llg/a$a;->f(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    :cond_6
    :goto_1
    return-void
.end method

.method private final I(Lcom/transsion/player/ui/ORPlayerView;Lcom/transsion/shorttv/bean/Video;)V
    .locals 2

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->c:Lms/k0;

    iget-object v1, v1, Lms/k0;->e:Landroid/widget/FrameLayout;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    instance-of v1, v0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_0
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    iget-object v1, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->c:Lms/k0;

    iget-object v1, v1, Lms/k0;->e:Landroid/widget/FrameLayout;

    invoke-virtual {v1, p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_1
    if-eqz p2, :cond_2

    invoke-virtual {p2}, Lcom/transsion/shorttv/bean/Video;->getWidth()Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p2}, Lcom/transsion/shorttv/bean/Video;->getHeight()Ljava/lang/Integer;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->Z0(Ljava/lang/Integer;Ljava/lang/Integer;)V

    :cond_2
    return-void
.end method

.method private final I0(Ljava/lang/String;Lcom/transsion/shorttv/bean/Subject;Lcom/transsion/shorttv/bean/ShortTVItem;Z)V
    .locals 4

    const/4 p4, 0x0

    const/4 v0, 0x2

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->c:Lms/k0;

    iget-object v2, v2, Lms/k0;->d:Lcom/transsion/shorttv/base/widget/expand/ExpandView;

    new-instance v3, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView$h;

    invoke-direct {v3, p0}, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView$h;-><init>(Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;)V

    invoke-virtual {v2, v3}, Lcom/transsion/shorttv/base/widget/expand/ExpandView;->setExpandListener(Lcom/transsion/shorttv/base/widget/expand/ExpandView$c;)V

    if-eqz p3, :cond_0

    invoke-virtual {p3}, Lcom/transsion/shorttv/bean/ShortTVItem;->getDescription()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-lez v3, :cond_0

    invoke-virtual {p3}, Lcom/transsion/shorttv/bean/ShortTVItem;->getDescription()Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Lcom/transsion/shorttv/bean/Subject;->getDescription()Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_1

    const-string p2, ""

    :cond_1
    :goto_0
    const-string p3, "format(...)"

    if-eqz p2, :cond_3

    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-nez v3, :cond_2

    goto :goto_2

    :cond_2
    sget-object v3, Lkotlin/jvm/internal/StringCompanionObject;->a:Lkotlin/jvm/internal/StringCompanionObject;

    new-array v3, v0, [Ljava/lang/Object;

    aput-object p1, v3, p4

    aput-object p2, v3, v1

    invoke-static {v3, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    const-string p2, "EP%s | %s"

    invoke-static {p2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    :goto_1
    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_3

    :cond_3
    :goto_2
    sget-object p2, Lkotlin/jvm/internal/StringCompanionObject;->a:Lkotlin/jvm/internal/StringCompanionObject;

    new-array p2, v1, [Ljava/lang/Object;

    aput-object p1, p2, p4

    invoke-static {p2, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    const-string p2, "EP%s"

    invoke-static {p2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :goto_3
    invoke-virtual {v2, p1}, Lcom/transsion/shorttv/base/widget/expand/ExpandView;->setTitle(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private final J(Landroid/view/View;Lcom/transsion/shorttv/bean/Subject;)V
    .locals 5

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lcom/transsion/shorttv/bean/Subject;->getUnlockType()Ljava/util/List;

    move-result-object p2

    if-nez p2, :cond_1

    :cond_0
    invoke-static {}, Lkotlin/collections/CollectionsKt;->l()Ljava/util/List;

    move-result-object p2

    :cond_1
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p2, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p2

    const/4 v1, 0x0

    if-eqz p1, :cond_2

    sget v2, Lcom/transsion/shorttv/R$id;->iv_lock_icon:I

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    goto :goto_0

    :cond_2
    move-object v2, v1

    :goto_0
    if-eqz p1, :cond_3

    sget v3, Lcom/transsion/shorttv/R$id;->btn_watch_ad_unlock:I

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    goto :goto_1

    :cond_3
    move-object v3, v1

    :goto_1
    if-eqz p1, :cond_4

    sget v4, Lcom/transsion/shorttv/R$id;->tv_buy_to_continue:I

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    goto :goto_2

    :cond_4
    move-object v4, v1

    :goto_2
    if-eqz p1, :cond_5

    sget v1, Lcom/transsion/shorttv/R$id;->container_series_info:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    :cond_5
    if-eqz v0, :cond_9

    if-eqz p2, :cond_9

    if-eqz v2, :cond_6

    invoke-static {v2}, Lyr/b;->e(Landroid/view/View;)V

    :cond_6
    if-eqz v3, :cond_7

    invoke-static {v3}, Lyr/b;->e(Landroid/view/View;)V

    :cond_7
    if-eqz v4, :cond_8

    invoke-static {v4}, Lyr/b;->b(Landroid/view/View;)V

    :cond_8
    if-eqz v1, :cond_15

    invoke-static {v1}, Lyr/b;->e(Landroid/view/View;)V

    goto :goto_3

    :cond_9
    if-eqz v0, :cond_d

    if-eqz v2, :cond_a

    invoke-static {v2}, Lyr/b;->e(Landroid/view/View;)V

    :cond_a
    if-eqz v3, :cond_b

    invoke-static {v3}, Lyr/b;->b(Landroid/view/View;)V

    :cond_b
    if-eqz v4, :cond_c

    invoke-static {v4}, Lyr/b;->e(Landroid/view/View;)V

    :cond_c
    if-eqz v1, :cond_15

    invoke-static {v1}, Lyr/b;->e(Landroid/view/View;)V

    goto :goto_3

    :cond_d
    if-eqz p2, :cond_11

    if-eqz v2, :cond_e

    invoke-static {v2}, Lyr/b;->e(Landroid/view/View;)V

    :cond_e
    if-eqz v3, :cond_f

    invoke-static {v3}, Lyr/b;->e(Landroid/view/View;)V

    :cond_f
    if-eqz v4, :cond_10

    invoke-static {v4}, Lyr/b;->b(Landroid/view/View;)V

    :cond_10
    if-eqz v1, :cond_15

    invoke-static {v1}, Lyr/b;->b(Landroid/view/View;)V

    goto :goto_3

    :cond_11
    if-eqz v2, :cond_12

    invoke-static {v2}, Lyr/b;->b(Landroid/view/View;)V

    :cond_12
    if-eqz v3, :cond_13

    invoke-static {v3}, Lyr/b;->b(Landroid/view/View;)V

    :cond_13
    if-eqz v4, :cond_14

    invoke-static {v4}, Lyr/b;->b(Landroid/view/View;)V

    :cond_14
    if-eqz v1, :cond_15

    invoke-static {v1}, Lyr/b;->b(Landroid/view/View;)V

    :cond_15
    :goto_3
    return-void
.end method

.method private final J0()V
    .locals 6

    const/4 v0, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->z:Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;->H0()Landroidx/lifecycle/LiveData;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Landroidx/lifecycle/LiveData;->f()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/transsion/shorttv/bean/Subject;

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Lcom/transsion/shorttv/bean/Subject;->getUnlockFrom()I

    move-result v3

    goto :goto_0

    :cond_0
    move v3, v2

    :goto_0
    if-gtz v3, :cond_1

    return-void

    :cond_1
    iput-boolean v1, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->U:Z

    div-int/lit8 v4, v3, 0x3c

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    rem-int/lit8 v3, v3, 0x3c

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    new-array v5, v0, [Ljava/lang/Object;

    aput-object v4, v5, v2

    aput-object v3, v5, v1

    invoke-static {v5, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    const-string v1, "%02d:%02d"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "format(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->c:Lms/k0;

    iget-object v1, v1, Lms/k0;->H:Lcom/noober/background/view/BLTextView;

    invoke-direct {p0, v0}, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->N(Ljava/lang/String;)Landroid/text/SpannableString;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->c:Lms/k0;

    iget-object v0, v0, Lms/k0;->H:Lcom/noober/background/view/BLTextView;

    const-string v1, "tvWatchFreeCountdown"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Lyr/b;->e(Landroid/view/View;)V

    return-void
.end method

.method private final K(Landroid/view/View;Lcom/transsion/shorttv/bean/Subject;)V
    .locals 4

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lcom/transsion/shorttv/bean/Subject;->getUnlockType()Ljava/util/List;

    move-result-object p2

    if-nez p2, :cond_1

    :cond_0
    invoke-static {}, Lkotlin/collections/CollectionsKt;->l()Ljava/util/List;

    move-result-object p2

    :cond_1
    const/4 v0, 0x0

    if-eqz p1, :cond_2

    sget v1, Lcom/transsion/shorttv/R$id;->iv_lock_icon:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    goto :goto_0

    :cond_2
    move-object v1, v0

    :goto_0
    if-eqz p1, :cond_3

    sget v2, Lcom/transsion/shorttv/R$id;->btn_watch_ad_unlock:I

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    goto :goto_1

    :cond_3
    move-object v2, v0

    :goto_1
    if-eqz p1, :cond_4

    sget v3, Lcom/transsion/shorttv/R$id;->tv_buy_to_continue:I

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    goto :goto_2

    :cond_4
    move-object v3, v0

    :goto_2
    if-eqz p1, :cond_5

    sget v0, Lcom/transsion/shorttv/R$id;->container_series_info:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    :cond_5
    const/4 p1, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p2, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_9

    if-eqz v1, :cond_6

    invoke-static {v1}, Lyr/b;->e(Landroid/view/View;)V

    :cond_6
    if-eqz v2, :cond_7

    invoke-static {v2}, Lyr/b;->b(Landroid/view/View;)V

    :cond_7
    if-eqz v3, :cond_8

    invoke-static {v3}, Lyr/b;->e(Landroid/view/View;)V

    :cond_8
    if-eqz v0, :cond_11

    invoke-static {v0}, Lyr/b;->e(Landroid/view/View;)V

    goto :goto_3

    :cond_9
    const/4 p1, 0x2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p2, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_d

    if-eqz v1, :cond_a

    invoke-static {v1}, Lyr/b;->e(Landroid/view/View;)V

    :cond_a
    if-eqz v2, :cond_b

    invoke-static {v2}, Lyr/b;->e(Landroid/view/View;)V

    :cond_b
    if-eqz v3, :cond_c

    invoke-static {v3}, Lyr/b;->b(Landroid/view/View;)V

    :cond_c
    if-eqz v0, :cond_11

    invoke-static {v0}, Lyr/b;->b(Landroid/view/View;)V

    goto :goto_3

    :cond_d
    if-eqz v1, :cond_e

    invoke-static {v1}, Lyr/b;->b(Landroid/view/View;)V

    :cond_e
    if-eqz v2, :cond_f

    invoke-static {v2}, Lyr/b;->b(Landroid/view/View;)V

    :cond_f
    if-eqz v3, :cond_10

    invoke-static {v3}, Lyr/b;->b(Landroid/view/View;)V

    :cond_10
    if-eqz v0, :cond_11

    invoke-static {v0}, Lyr/b;->b(Landroid/view/View;)V

    :cond_11
    :goto_3
    return-void
.end method

.method private final K0(Ljs/e;)V
    .locals 12

    const/4 v0, 0x0

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->R:Landroid/view/View;

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->c:Lms/k0;

    iget-object v2, v2, Lms/k0;->L:Landroid/view/ViewStub;

    invoke-virtual {v2}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->R:Landroid/view/View;

    if-eqz v2, :cond_0

    sget v3, Lcom/transsion/shorttv/R$id;->btn_buy_full_series:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_0

    new-instance v3, Lcom/transsion/shorttv/ui/widget/y;

    invoke-direct {v3, p0}, Lcom/transsion/shorttv/ui/widget/y;-><init>(Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    iget-object v2, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->R:Landroid/view/View;

    if-eqz v2, :cond_1

    sget v3, Lcom/transsion/shorttv/R$id;->btn_watch_ad_unlock:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroidx/appcompat/widget/AppCompatTextView;

    if-eqz v2, :cond_1

    new-instance v3, Lcom/transsion/shorttv/ui/widget/z;

    invoke-direct {v3, p0}, Lcom/transsion/shorttv/ui/widget/z;-><init>(Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1
    iget-object v2, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->z:Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;

    const/4 v3, 0x0

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;->H0()Landroidx/lifecycle/LiveData;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Landroidx/lifecycle/LiveData;->f()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/transsion/shorttv/bean/Subject;

    goto :goto_0

    :cond_2
    move-object v2, v3

    :goto_0
    iget-object v4, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->R:Landroid/view/View;

    if-eqz v4, :cond_4

    sget v5, Lcom/transsion/shorttv/R$id;->tv_series_title:I

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroidx/appcompat/widget/AppCompatTextView;

    if-eqz v4, :cond_4

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Lcom/transsion/shorttv/bean/Subject;->getTitle()Ljava/lang/String;

    move-result-object v5

    goto :goto_1

    :cond_3
    move-object v5, v3

    :goto_1
    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_4
    iget-object v4, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->R:Landroid/view/View;

    if-eqz v4, :cond_9

    sget v5, Lcom/transsion/shorttv/R$id;->tv_series_price:I

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroidx/appcompat/widget/AppCompatTextView;

    if-eqz v4, :cond_9

    if-eqz v2, :cond_5

    invoke-virtual {v2}, Lcom/transsion/shorttv/bean/Subject;->getSkuInfo()Lcom/transsion/shorttv/bean/SkuInfo;

    move-result-object v5

    if-eqz v5, :cond_5

    invoke-virtual {v5}, Lcom/transsion/shorttv/bean/SkuInfo;->getPrice()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_5

    invoke-static {v5}, Lkotlin/text/StringsKt;->t(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v5

    goto :goto_2

    :cond_5
    move-object v5, v3

    :goto_2
    if-eqz v2, :cond_6

    invoke-virtual {v2}, Lcom/transsion/shorttv/bean/Subject;->getSkuInfo()Lcom/transsion/shorttv/bean/SkuInfo;

    move-result-object v6

    if-eqz v6, :cond_6

    invoke-virtual {v6}, Lcom/transsion/shorttv/bean/SkuInfo;->getCurrencySymbol()Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_7

    :cond_6
    const-string v6, "$"

    :cond_7
    if-eqz v5, :cond_8

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "From "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "%.2f"

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    new-array v7, v1, [Ljava/lang/Object;

    aput-object v5, v7, v0

    invoke-static {v7, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v5

    invoke-static {v6, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "format(...)"

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-static {v4}, Lyr/b;->e(Landroid/view/View;)V

    goto :goto_3

    :cond_8
    invoke-static {v4}, Lyr/b;->b(Landroid/view/View;)V

    :cond_9
    :goto_3
    iget-object v4, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->f:Lcom/transsion/shorttv/ui/fragment/ShortTvDetailListFragment;

    if-eqz v4, :cond_a

    invoke-virtual {v4}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v4

    if-nez v4, :cond_c

    :cond_a
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    instance-of v5, v4, Landroidx/fragment/app/FragmentActivity;

    if-eqz v5, :cond_b

    check-cast v4, Landroidx/fragment/app/FragmentActivity;

    goto :goto_4

    :cond_b
    move-object v4, v3

    :cond_c
    :goto_4
    if-eqz v2, :cond_d

    invoke-virtual {v2}, Lcom/transsion/shorttv/bean/Subject;->getCover()Lcom/transsion/shorttv/bean/Cover;

    move-result-object v5

    if-eqz v5, :cond_d

    invoke-virtual {v5}, Lcom/transsion/shorttv/bean/Cover;->getUrl()Ljava/lang/String;

    move-result-object v5

    goto :goto_5

    :cond_d
    move-object v5, v3

    :goto_5
    iget-object v6, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->R:Landroid/view/View;

    if-eqz v6, :cond_e

    sget v7, Lcom/transsion/shorttv/R$id;->iv_series_cover:I

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroidx/appcompat/widget/AppCompatImageView;

    goto :goto_6

    :cond_e
    move-object v6, v3

    :goto_6
    if-eqz v6, :cond_10

    if-eqz v5, :cond_10

    invoke-interface {v5}, Ljava/lang/CharSequence;->length()I

    move-result v7

    if-nez v7, :cond_f

    goto :goto_7

    :cond_f
    if-eqz v4, :cond_10

    invoke-static {v4}, Lcom/bumptech/glide/Glide;->with(Landroidx/fragment/app/FragmentActivity;)Lcom/bumptech/glide/RequestManager;

    move-result-object v4

    invoke-virtual {v4, v5}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object v4

    invoke-virtual {v4}, Lcom/bumptech/glide/request/BaseRequestOptions;->centerCrop()Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object v4

    check-cast v4, Lcom/bumptech/glide/RequestBuilder;

    invoke-virtual {v4, v6}, Lcom/bumptech/glide/RequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    :cond_10
    :goto_7
    iget-object v4, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->R:Landroid/view/View;

    if-eqz v4, :cond_11

    sget v5, Lcom/transsion/shorttv/R$id;->iv_blur_bg:I

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroidx/appcompat/widget/AppCompatImageView;

    goto :goto_8

    :cond_11
    move-object v4, v3

    :goto_8
    if-eqz p1, :cond_12

    invoke-virtual {p1}, Ljs/e;->d()Lcom/transsion/shorttv/bean/ShortTVItem;

    move-result-object p1

    if-eqz p1, :cond_12

    invoke-virtual {p1}, Lcom/transsion/shorttv/bean/ShortTVItem;->getVideo()Lcom/transsion/shorttv/bean/Media;

    move-result-object p1

    if-eqz p1, :cond_12

    invoke-virtual {p1}, Lcom/transsion/shorttv/bean/Media;->getCover()Lcom/transsion/shorttv/bean/Cover;

    move-result-object p1

    if-eqz p1, :cond_12

    invoke-virtual {p1}, Lcom/transsion/shorttv/bean/Cover;->getUrl()Ljava/lang/String;

    move-result-object v3

    :cond_12
    move-object v6, v3

    if-eqz v4, :cond_14

    if-eqz v6, :cond_14

    invoke-interface {v6}, Ljava/lang/CharSequence;->length()I

    move-result p1

    if-nez p1, :cond_13

    goto :goto_9

    :cond_13
    sget-object v5, Lcom/transsion/shorttv/base/image/blurhash/e;->a:Lcom/transsion/shorttv/base/image/blurhash/e;

    new-instance v9, Lcom/transsion/shorttv/ui/widget/a0;

    invoke-direct {v9, v4}, Lcom/transsion/shorttv/ui/widget/a0;-><init>(Landroidx/appcompat/widget/AppCompatImageView;)V

    const/4 v10, 0x6

    const/4 v11, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static/range {v5 .. v11}, Lcom/transsion/shorttv/base/image/blurhash/e;->d(Lcom/transsion/shorttv/base/image/blurhash/e;Ljava/lang/String;IILkotlin/jvm/functions/Function1;ILjava/lang/Object;)V

    :cond_14
    :goto_9
    const/4 p1, 0x2

    if-eqz v2, :cond_15

    invoke-virtual {v2}, Lcom/transsion/shorttv/bean/Subject;->getMiniTvType()I

    move-result v3

    if-ne v3, p1, :cond_15

    iget-object v3, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->R:Landroid/view/View;

    invoke-direct {p0, v3, v2}, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->K(Landroid/view/View;Lcom/transsion/shorttv/bean/Subject;)V

    goto :goto_a

    :cond_15
    iget-object v3, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->R:Landroid/view/View;

    invoke-direct {p0, v3, v2}, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->J(Landroid/view/View;Lcom/transsion/shorttv/bean/Subject;)V

    :goto_a
    iget-object v3, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->R:Landroid/view/View;

    if-eqz v3, :cond_16

    invoke-static {v3}, Lyr/b;->e(Landroid/view/View;)V

    :cond_16
    iput-boolean v1, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->S:Z

    iget-object v3, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->O:Landroid/os/Handler;

    iget-object v4, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->P:Ljava/lang/Runnable;

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    invoke-direct {p0}, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->P0()V

    if-eqz v2, :cond_17

    invoke-virtual {v2}, Lcom/transsion/shorttv/bean/Subject;->getUnlockType()Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_17

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-ne v3, v1, :cond_17

    iget-object v3, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->c:Lms/k0;

    iget-object v3, v3, Lms/k0;->i:Landroidx/constraintlayout/widget/Group;

    const-string v4, "groupPayLockHide"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v3}, Lyr/b;->b(Landroid/view/View;)V

    :cond_17
    invoke-direct {p0}, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->V()V

    if-eqz v2, :cond_18

    invoke-virtual {v2}, Lcom/transsion/shorttv/bean/Subject;->getMiniTvType()I

    move-result v3

    if-ne v3, p1, :cond_18

    invoke-virtual {v2}, Lcom/transsion/shorttv/bean/Subject;->getUnlockType()Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_18

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-ne v3, v1, :cond_18

    move v3, v1

    goto :goto_b

    :cond_18
    move v3, v0

    :goto_b
    if-eqz v2, :cond_19

    invoke-virtual {v2}, Lcom/transsion/shorttv/bean/Subject;->getUnlockType()Ljava/util/List;

    move-result-object v4

    if-eqz v4, :cond_19

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v4, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-ne p1, v1, :cond_19

    if-nez v3, :cond_19

    invoke-direct {p0}, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->R0()V

    :cond_19
    sget-object p1, Lss/b;->a:Lss/b;

    iget-object v1, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->d:Ljs/e;

    if-eqz v1, :cond_1a

    invoke-virtual {v1}, Ljs/e;->c()I

    move-result v0

    :cond_1a
    invoke-virtual {p1, v2, v0}, Lss/b;->i(Lcom/transsion/shorttv/bean/Subject;I)V

    return-void
.end method

.method private final L()V
    .locals 4

    iget-boolean v0, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->S:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->c:Lms/k0;

    iget-object v0, v0, Lms/k0;->l:Landroidx/appcompat/widget/AppCompatImageView;

    const-string v1, "ivDownload"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->O:Landroid/os/Handler;

    iget-object v1, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->P:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->O:Landroid/os/Handler;

    iget-object v1, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->P:Ljava/lang/Runnable;

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_1
    return-void
.end method

.method private static final L0(Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0}, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->S0()V

    invoke-direct {p0}, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->O()V

    return-void
.end method

.method private static final M(Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;)V
    .locals 0

    invoke-direct {p0}, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->X()V

    return-void
.end method

.method private static final M0(Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;Landroid/view/View;)V
    .locals 2

    invoke-direct {p0}, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->S0()V

    const/4 p1, 0x1

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p0, v1, p1, v0}, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->watchAdToUnlock$shortTvLib_release$default(Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;ZILjava/lang/Object;)V

    return-void
.end method

.method private final N(Ljava/lang/String;)Landroid/text/SpannableString;
    .locals 10

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/transsion/shorttv/R$string;->short_tv_watch_free_countdown:I

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "getString(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Landroid/text/SpannableString;

    invoke-direct {v1, v0}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    const/4 v8, 0x6

    const/4 v9, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v4, v0

    move-object v5, p1

    invoke-static/range {v4 .. v9}, Lkotlin/text/StringsKt;->o0(Ljava/lang/CharSequence;Ljava/lang/String;IZILjava/lang/Object;)I

    move-result v2

    if-gez v2, :cond_0

    return-object v1

    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    add-int/2addr p1, v2

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    sget v5, Lcom/transsion/shorttv/R$color;->short_tv_white_60:I

    invoke-static {v4, v5}, Landroidx/core/content/b;->getColor(Landroid/content/Context;I)I

    move-result v4

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    sget v6, Lcom/transsion/shorttv/R$color;->short_tv_white:I

    invoke-static {v5, v6}, Landroidx/core/content/b;->getColor(Landroid/content/Context;I)I

    move-result v5

    const/16 v6, 0x21

    if-lez v2, :cond_1

    new-instance v7, Landroid/text/style/ForegroundColorSpan;

    invoke-direct {v7, v4}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-virtual {v1, v7, v3, v2, v6}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    :cond_1
    new-instance v3, Landroid/text/style/ForegroundColorSpan;

    invoke-direct {v3, v5}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-virtual {v1, v3, v2, p1, v6}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge p1, v2, :cond_2

    new-instance v2, Landroid/text/style/ForegroundColorSpan;

    invoke-direct {v2, v4}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {v1, v2, p1, v0, v6}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    :cond_2
    return-object v1
.end method

.method private static final N0(Landroidx/appcompat/widget/AppCompatImageView;Landroid/graphics/drawable/BitmapDrawable;)Lkotlin/Unit;
    .locals 1

    const-string v0, "drawable"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/AppCompatImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method

.method private final O()V
    .locals 5

    sget-object v0, Lss/b;->a:Lss/b;

    iget-object v1, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->z:Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;->H0()Landroidx/lifecycle/LiveData;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroidx/lifecycle/LiveData;->f()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/shorttv/bean/Subject;

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->d:Ljs/e;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljs/e;->c()I

    move-result v2

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    const-string v3, "minitv_pay"

    const-string v4, ""

    invoke-virtual {v0, v1, v2, v3, v4}, Lss/b;->h(Lcom/transsion/shorttv/bean/Subject;ILjava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->S0()V

    iget-object v0, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->z:Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;->B0()Lqs/i;

    move-result-object v0

    if-nez v0, :cond_2

    goto :goto_2

    :cond_2
    iget-object v1, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->f:Lcom/transsion/shorttv/ui/fragment/ShortTvDetailListFragment;

    if-nez v1, :cond_3

    return-void

    :cond_3
    invoke-interface {v0}, Lqs/i;->a()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v0}, Lqs/i;->getUserId()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->Q(Ljava/lang/String;)V

    return-void

    :cond_4
    new-instance v2, Lcom/transsion/shorttv/ui/widget/e0;

    invoke-direct {v2, p0, v1, v0}, Lcom/transsion/shorttv/ui/widget/e0;-><init>(Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;Lcom/transsion/shorttv/ui/fragment/ShortTvDetailListFragment;Lqs/i;)V

    invoke-virtual {v1, v0, v2}, Lcom/transsion/shorttv/ui/fragment/ShortTvDetailListFragment;->e1(Lqs/i;Lkotlin/jvm/functions/Function0;)V

    :cond_5
    :goto_2
    return-void
.end method

.method private final O0()V
    .locals 1

    iget-object v0, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->f:Lcom/transsion/shorttv/ui/fragment/ShortTvDetailListFragment;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/transsion/shorttv/ui/fragment/ShortTvDetailListFragment;->p1()V

    :cond_0
    return-void
.end method

.method private static final P(Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;Lcom/transsion/shorttv/ui/fragment/ShortTvDetailListFragment;Lqs/i;)Lkotlin/Unit;
    .locals 3

    iget-object v0, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->d:Ljs/e;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Ljs/e;->e()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->d:Ljs/e;

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Ljs/e;->c()I

    move-result v1

    new-instance v2, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView$b;

    invoke-direct {v2, p0, p2}, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView$b;-><init>(Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;Lqs/i;)V

    iget-object p2, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->z:Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;->l0()Landroidx/lifecycle/b0;

    move-result-object p2

    if-eqz p2, :cond_1

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Landroidx/lifecycle/u;

    move-result-object p1

    invoke-virtual {p2, p1, v2}, Landroidx/lifecycle/LiveData;->j(Landroidx/lifecycle/u;Landroidx/lifecycle/c0;)V

    :cond_1
    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->setLoading(Z)V

    iget-object p0, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->z:Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;

    if-eqz p0, :cond_2

    invoke-virtual {p0, v0, v1}, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;->T(Ljava/lang/String;I)V

    :cond_2
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :cond_3
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :cond_4
    :goto_0
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method

.method private final P0()V
    .locals 2

    iget-object v0, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->O:Landroid/os/Handler;

    iget-object v1, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->P:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->z:Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;->q1(Z)V

    :cond_0
    return-void
.end method

.method private final Q(Ljava/lang/String;)V
    .locals 21

    move-object/from16 v0, p0

    sget-object v1, Lnh/m;->a:Lnh/m;

    invoke-virtual {v1}, Lnh/m;->e()Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lfs/b;->a:Lfs/b$a;

    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    move-result-object v2

    sget v3, Lcom/transsion/shorttv/R$string;->short_tv_no_network_toast:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lfs/b$a;->e(Ljava/lang/CharSequence;)V

    return-void

    :cond_0
    if-eqz p1, :cond_d

    invoke-interface/range {p1 .. p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    const/4 v2, 0x0

    if-lez v1, :cond_1

    move-object/from16 v1, p1

    goto :goto_0

    :cond_1
    move-object v1, v2

    :goto_0
    if-nez v1, :cond_2

    goto/16 :goto_7

    :cond_2
    iget-object v3, v0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->z:Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;

    if-eqz v3, :cond_c

    invoke-virtual {v3}, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;->H0()Landroidx/lifecycle/LiveData;

    move-result-object v3

    if-eqz v3, :cond_c

    invoke-virtual {v3}, Landroidx/lifecycle/LiveData;->f()Ljava/lang/Object;

    move-result-object v3

    move-object v15, v3

    check-cast v15, Lcom/transsion/shorttv/bean/Subject;

    if-nez v15, :cond_3

    goto/16 :goto_6

    :cond_3
    invoke-virtual {v15}, Lcom/transsion/shorttv/bean/Subject;->getSkuInfo()Lcom/transsion/shorttv/bean/SkuInfo;

    move-result-object v3

    if-nez v3, :cond_4

    sget-object v4, Llg/a;->a:Llg/a$a;

    iget-object v5, v0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->a:Ljava/lang/String;

    const/4 v8, 0x4

    const/4 v9, 0x0

    const-string v6, "callPayMethod failed, no sku info."

    const/4 v7, 0x0

    invoke-static/range {v4 .. v9}, Llg/a$a;->l(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    return-void

    :cond_4
    invoke-virtual {v3}, Lcom/transsion/shorttv/bean/SkuInfo;->getSkuId()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_b

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v4

    if-lez v4, :cond_5

    move-object v5, v3

    goto :goto_1

    :cond_5
    move-object v5, v2

    :goto_1
    if-nez v5, :cond_6

    goto :goto_5

    :cond_6
    invoke-virtual {v15}, Lcom/transsion/shorttv/bean/Subject;->getSubjectId()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_a

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v4

    if-lez v4, :cond_7

    move-object v2, v3

    :cond_7
    if-nez v2, :cond_8

    goto :goto_4

    :cond_8
    iget-object v3, v0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->d:Ljs/e;

    if-eqz v3, :cond_9

    invoke-virtual {v3}, Ljs/e;->c()I

    move-result v3

    :goto_2
    move v14, v3

    goto :goto_3

    :cond_9
    const/4 v3, 0x0

    goto :goto_2

    :goto_3
    sget-object v13, Lcom/transsion/shorttv/order/d;->a:Lcom/transsion/shorttv/order/d;

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v12

    const-string v3, "subject_id"

    invoke-static {v3, v2}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v2

    invoke-static {v2}, Lkotlin/collections/MapsKt;->f(Lkotlin/Pair;)Ljava/util/Map;

    move-result-object v10

    new-instance v2, Lcom/transsion/shorttv/order/bean/CreatePaynicornOrderReqBean;

    const/16 v16, 0x138

    const/16 v17, 0x0

    const-string v4, "MovieBox"

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v11, 0x0

    const/16 v18, 0x0

    move-object v3, v2

    move-object v6, v1

    move-object/from16 v19, v12

    move-object/from16 v12, v18

    move-object/from16 v20, v13

    move/from16 v13, v16

    move-object/from16 p1, v2

    move v2, v14

    move-object/from16 v14, v17

    invoke-direct/range {v3 .. v14}, Lcom/transsion/shorttv/order/bean/CreatePaynicornOrderReqBean;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;ZLcom/transsion/shorttv/order/EnumPayChannel;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    new-instance v3, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView$c;

    invoke-direct {v3, v0, v15, v2, v1}, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView$c;-><init>(Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;Lcom/transsion/shorttv/bean/Subject;ILjava/lang/String;)V

    move-object/from16 v4, p1

    move-object/from16 v2, v19

    move-object/from16 v1, v20

    invoke-virtual {v1, v2, v4, v3}, Lcom/transsion/shorttv/order/d;->d(Landroid/content/Context;Lcom/transsion/shorttv/order/bean/CreatePaynicornOrderReqBean;Lcom/transsion/shorttv/order/b;)V

    :cond_a
    :goto_4
    return-void

    :cond_b
    :goto_5
    sget-object v5, Llg/a;->a:Llg/a$a;

    iget-object v6, v0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->a:Ljava/lang/String;

    const/4 v9, 0x4

    const/4 v10, 0x0

    const-string v7, "callPayMethod failed, skuId is empty."

    const/4 v8, 0x0

    invoke-static/range {v5 .. v10}, Llg/a$a;->l(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    :cond_c
    :goto_6
    return-void

    :cond_d
    :goto_7
    sget-object v11, Llg/a;->a:Llg/a$a;

    iget-object v12, v0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->a:Ljava/lang/String;

    const/4 v15, 0x4

    const/16 v16, 0x0

    const-string v13, "callPayMethod failed, userId is empty."

    const/4 v14, 0x0

    invoke-static/range {v11 .. v16}, Llg/a$a;->l(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    return-void
.end method

.method private final Q0()V
    .locals 3

    iget-object v0, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->f:Lcom/transsion/shorttv/ui/fragment/ShortTvDetailListFragment;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1e

    if-lt v1, v2, :cond_2

    invoke-static {v0}, Landroidx/core/view/t2;->a(Landroid/view/Window;)Landroid/view/WindowInsetsController;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-static {}, Landroidx/core/view/j2;->a()I

    move-result v1

    invoke-static {v0, v1}, Landroidx/core/view/b0;->a(Landroid/view/WindowInsetsController;I)V

    goto :goto_0

    :cond_2
    const/16 v1, 0x400

    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x100

    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    :cond_3
    :goto_0
    return-void
.end method

.method private static final R(Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;)V
    .locals 0

    invoke-direct {p0}, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->O0()V

    return-void
.end method

.method private final R0()V
    .locals 3

    invoke-direct {p0}, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->S0()V

    iget-object v0, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->Q:Ljava/lang/Integer;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v2

    if-lez v2, :cond_0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    invoke-virtual {p0, v0}, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->updateUnlockCountdownText$shortTvLib_release(Ljava/lang/Integer;)V

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->V:Lcom/transsion/shorttv/ui/widget/a1;

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-interface {v1, v0}, Lcom/transsion/shorttv/ui/widget/a1;->a(I)V

    :cond_1
    return-void
.end method

.method private final S(Lts/b;)V
    .locals 9

    iget-boolean v0, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->a0:Z

    if-eqz v0, :cond_0

    sget-object p1, Lfs/b;->a:Lfs/b$a;

    sget v0, Lcom/transsion/shorttv/R$string;->short_tv_subtitle_is_downloading:I

    invoke-virtual {p1, v0}, Lfs/b$a;->d(I)V

    return-void

    :cond_0
    sget-object v0, Lnh/m;->a:Lnh/m;

    invoke-virtual {v0}, Lnh/m;->e()Z

    move-result v0

    if-nez v0, :cond_1

    sget-object p1, Lfs/b;->a:Lfs/b$a;

    sget v0, Lcom/transsion/shorttv/R$string;->short_tv_no_network_toast:I

    invoke-virtual {p1, v0}, Lfs/b$a;->d(I)V

    return-void

    :cond_1
    sget-object v0, Lcom/transsion/shorttv/subtitle/manager/b;->a:Lcom/transsion/shorttv/subtitle/manager/b$a;

    invoke-virtual {v0}, Lcom/transsion/shorttv/subtitle/manager/b$a;->b()Lcom/transsion/shorttv/subtitle/manager/b;

    move-result-object v1

    invoke-interface {v1, p0}, Lcom/transsion/shorttv/subtitle/manager/b;->b(Lcom/transsion/subtitle_download/a;)V

    invoke-virtual {p1}, Lts/b;->a()Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;->setStatus(I)V

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->a0:Z

    sget-object v2, Llg/a;->a:Llg/a$a;

    iget-object v3, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->a:Ljava/lang/String;

    const-class v1, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lts/b;->a()Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;

    move-result-object v4

    invoke-virtual {v4}, Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lts/b;->a()Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;

    move-result-object v5

    invoke-virtual {v5}, Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;->getType()I

    move-result v5

    invoke-virtual {p1}, Lts/b;->a()Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;

    move-result-object v6

    invoke-virtual {v6}, Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;->getSubtitleName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1}, Lts/b;->a()Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;

    move-result-object v7

    invoke-virtual {v7}, Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;->getResourceId()Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " --> downloadSubtitle() --> \u5185\u7f6e\u5b57\u5e55\u5217\u8868\uff0c\u4e0b\u8f7d\u5b57\u5e55\uff0cname = "

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", subtype = "

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",download subtitleName = "

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", subResourceId = "

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "~"

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x4

    const/4 v7, 0x0

    const/4 v5, 0x0

    invoke-static/range {v2 .. v7}, Llg/a$a;->f(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    invoke-virtual {p1}, Lts/b;->a()Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;->setAutoDownload(Z)V

    iput-object p1, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->W:Lts/b;

    invoke-virtual {v0}, Lcom/transsion/shorttv/subtitle/manager/b$a;->b()Lcom/transsion/shorttv/subtitle/manager/b;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/transsion/shorttv/subtitle/manager/b;->d(Lts/b;)V

    return-void
.end method

.method private final S0()V
    .locals 1

    iget-object v0, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->V:Lcom/transsion/shorttv/ui/widget/a1;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/transsion/shorttv/ui/widget/a1;->b()V

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->updateUnlockCountdownText$shortTvLib_release(Ljava/lang/Integer;)V

    return-void
.end method

.method private static final T(Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;Ljava/lang/Boolean;)V
    .locals 0

    invoke-direct {p0}, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->T0()V

    return-void
.end method

.method private final T0()V
    .locals 2

    iget-object v0, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->z:Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;->H0()Landroidx/lifecycle/LiveData;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->f()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/shorttv/bean/Subject;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/transsion/shorttv/bean/Subject;->getShortTVFavInfo()Lcom/transsion/shorttv/bean/ShortTVFavInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/transsion/shorttv/bean/ShortTVFavInfo;->getFavoriteNum()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x0

    :goto_0
    invoke-static {v0, v1}, Lds/f;->a(J)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->c:Lms/k0;

    iget-object v1, v1, Lms/k0;->z:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->c:Lms/k0;

    iget-object v0, v0, Lms/k0;->z:Landroidx/appcompat/widget/AppCompatTextView;

    iget-object v1, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->z:Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;->H0()Landroidx/lifecycle/LiveData;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroidx/lifecycle/LiveData;->f()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/shorttv/bean/Subject;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/transsion/shorttv/bean/Subject;->getShortTVFavInfo()Lcom/transsion/shorttv/bean/ShortTVFavInfo;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/transsion/shorttv/bean/ShortTVFavInfo;->getHasFavorite()Z

    move-result v1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    invoke-virtual {v0, v1}, Landroid/view/View;->setSelected(Z)V

    return-void
.end method

.method private final U(Ljs/f;)V
    .locals 1

    instance-of v0, p1, Ljs/i;

    if-eqz v0, :cond_0

    sget p1, Lcom/transsion/shorttv/R$string;->short_tv_error_load_failed:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    goto :goto_0

    :cond_0
    instance-of v0, p1, Ljs/h;

    if-eqz v0, :cond_1

    sget p1, Lcom/transsion/shorttv/R$string;->short_tv_favorite_remove_toast:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    goto :goto_0

    :cond_1
    instance-of p1, p1, Ljs/g;

    if-eqz p1, :cond_2

    sget p1, Lcom/transsion/shorttv/R$string;->short_tv_favorite_toast:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_3

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    sget-object v0, Lfs/b;->a:Lfs/b$a;

    invoke-virtual {v0, p1}, Lfs/b$a;->d(I)V

    :cond_3
    return-void
.end method

.method private final U0(J)V
    .locals 4

    const-wide/16 v0, 0x3e8

    div-long/2addr p1, v0

    const-wide/16 v0, 0x0

    invoke-static {p1, p2, v0, v1}, Lkotlin/ranges/RangesKt;->g(JJ)J

    move-result-wide p1

    const/16 v0, 0x3c

    int-to-long v0, v0

    div-long v2, p1, v0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    rem-long/2addr p1, v0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const/4 p2, 0x2

    new-array v0, p2, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object v2, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    invoke-static {v0, p2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    const-string p2, "%02d:%02d"

    invoke-static {p2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "format(...)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p2, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->c:Lms/k0;

    iget-object p2, p2, Lms/k0;->H:Lcom/noober/background/view/BLTextView;

    invoke-direct {p0, p1}, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->N(Ljava/lang/String;)Landroid/text/SpannableString;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private final V()V
    .locals 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->U:Z

    iget-object v0, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->c:Lms/k0;

    iget-object v0, v0, Lms/k0;->H:Lcom/noober/background/view/BLTextView;

    const-string v1, "tvWatchFreeCountdown"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Lyr/b;->b(Landroid/view/View;)V

    return-void
.end method

.method private final V0(J)V
    .locals 1

    iget-object v0, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->c:Lms/k0;

    iget-object v0, v0, Lms/k0;->u:Landroidx/appcompat/widget/AppCompatSeekBar;

    long-to-int p1, p1

    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setProgress(I)V

    iget-object p2, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->c:Lms/k0;

    iget-object p2, p2, Lms/k0;->s:Landroid/widget/ProgressBar;

    invoke-virtual {p2, p1}, Landroid/widget/ProgressBar;->setProgress(I)V

    return-void
.end method

.method private final W()V
    .locals 4

    invoke-direct {p0}, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->S0()V

    invoke-direct {p0}, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->V()V

    iget-object v0, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->T:Lcom/transsion/shorttv/ad/common/STCommonVideoAdHelper;

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    const/4 v3, 0x1

    invoke-static {v0, v2, v3, v1}, Lcom/transsion/shorttv/ad/common/STCommonVideoAdHelper;->q(Lcom/transsion/shorttv/ad/common/STCommonVideoAdHelper;IILjava/lang/Object;)V

    :cond_0
    iput-object v1, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->T:Lcom/transsion/shorttv/ad/common/STCommonVideoAdHelper;

    iput-boolean v2, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->S:Z

    iget-object v0, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->R:Landroid/view/View;

    if-eqz v0, :cond_1

    invoke-static {v0}, Lyr/b;->b(Landroid/view/View;)V

    :cond_1
    iget-object v0, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->c:Lms/k0;

    iget-object v0, v0, Lms/k0;->i:Landroidx/constraintlayout/widget/Group;

    const-string v1, "groupPayLockHide"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Lyr/b;->e(Landroid/view/View;)V

    invoke-direct {p0}, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->L()V

    return-void
.end method

.method private final W0(J)V
    .locals 8

    iget-object v0, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->c:Lms/k0;

    iget-object v0, v0, Lms/k0;->u:Landroidx/appcompat/widget/AppCompatSeekBar;

    long-to-int v1, p1

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setMax(I)V

    iget-object v0, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->c:Lms/k0;

    iget-object v0, v0, Lms/k0;->s:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setMax(I)V

    sget-object v2, Llg/a;->a:Llg/a$a;

    iget-object v3, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->a:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateProgressMax: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, "  : "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x4

    const/4 v7, 0x0

    const/4 v5, 0x0

    invoke-static/range {v2 .. v7}, Llg/a$a;->f(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    return-void
.end method

.method private final X()V
    .locals 2

    iget-boolean v0, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->S:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->O:Landroid/os/Handler;

    iget-object v1, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->P:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->z:Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;->q1(Z)V

    :cond_1
    return-void
.end method

.method private static final X0(Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;)V
    .locals 1

    iget-object p0, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->z:Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;

    if-eqz p0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;->e1(Z)V

    :cond_0
    return-void
.end method

.method private final Y()V
    .locals 3

    iget-object v0, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->f:Lcom/transsion/shorttv/ui/fragment/ShortTvDetailListFragment;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1e

    if-lt v1, v2, :cond_2

    invoke-static {v0}, Landroidx/core/view/t2;->a(Landroid/view/Window;)Landroid/view/WindowInsetsController;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-static {}, Landroidx/core/view/j2;->a()I

    move-result v1

    invoke-static {v0, v1}, Landroidx/core/view/e0;->a(Landroid/view/WindowInsetsController;I)V

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroidx/core/view/v2;->a(Landroid/view/WindowInsetsController;I)V

    goto :goto_0

    :cond_2
    const/16 v1, 0x400

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x504

    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    :cond_3
    :goto_0
    return-void
.end method

.method private final Y0(Z)V
    .locals 5

    invoke-static {}, Lcom/blankj/utilcode/util/y;->c()I

    move-result v0

    if-eqz p1, :cond_0

    const-wide v1, 0x3fd147ae147ae148L    # 0.27

    goto :goto_0

    :cond_0
    iget-boolean p1, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->G:Z

    if-eqz p1, :cond_1

    const-wide v1, 0x3fd999999999999aL    # 0.4

    goto :goto_0

    :cond_1
    const-wide v1, 0x3fd70a3d70a3d70aL    # 0.36

    :goto_0
    int-to-double v3, v0

    mul-double/2addr v3, v1

    double-to-int p1, v3

    iget-object v0, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->c:Lms/k0;

    iget-object v0, v0, Lms/k0;->f:Landroid/widget/FrameLayout;

    const-string v1, "flSubtitle"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    if-eqz v1, :cond_2

    check-cast v1, Landroidx/constraintlayout/widget/ConstraintLayout$b;

    const/4 v2, -0x1

    iput v2, v1, Landroidx/constraintlayout/widget/ConstraintLayout$b;->k:I

    const/4 v3, 0x0

    iput v3, v1, Landroidx/constraintlayout/widget/ConstraintLayout$b;->l:I

    iput p1, v1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    iput v2, v1, Landroidx/constraintlayout/widget/ConstraintLayout$b;->u:I

    iput v3, v1, Landroidx/constraintlayout/widget/ConstraintLayout$b;->v:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void

    :cond_2
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "null cannot be cast to non-null type androidx.constraintlayout.widget.ConstraintLayout.LayoutParams"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private final Z(Landroid/content/Context;)V
    .locals 2

    new-instance v0, Landroid/view/GestureDetector;

    new-instance v1, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView$e;

    invoke-direct {v1, p0}, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView$e;-><init>(Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;)V

    invoke-direct {v0, p1, v1}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->m:Landroid/view/GestureDetector;

    invoke-direct {p0}, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->e0()V

    return-void
.end method

.method private final Z0(Ljava/lang/Integer;Ljava/lang/Integer;)V
    .locals 10

    if-eqz p1, :cond_c

    if-eqz p2, :cond_c

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_2

    :cond_0
    iget-boolean v0, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->F:Z

    const-string v1, "flContainer"

    const-string v2, "null cannot be cast to non-null type androidx.constraintlayout.widget.ConstraintLayout.LayoutParams"

    if-eqz v0, :cond_a

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    if-lez v0, :cond_9

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v0

    if-gtz v0, :cond_1

    goto/16 :goto_0

    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v3

    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->G:Z

    const/high16 v5, 0x42580000    # 54.0f

    invoke-static {v5}, Lcom/blankj/utilcode/util/a0;->a(F)I

    const/high16 v5, 0x41600000    # 14.0f

    invoke-static {v5}, Lcom/blankj/utilcode/util/a0;->a(F)I

    move-result v5

    const/high16 v6, 0x40800000    # 4.0f

    invoke-static {v6}, Lcom/blankj/utilcode/util/a0;->a(F)I

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v7

    const/4 v8, -0x1

    const-string v9, "llCtr"

    if-le v6, v7, :cond_5

    const/high16 p1, 0x42480000    # 50.0f

    invoke-static {p1}, Lcom/blankj/utilcode/util/a0;->a(F)I

    move-result p1

    iget-object p2, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->c:Lms/k0;

    iget-object p2, p2, Lms/k0;->e:Landroid/widget/FrameLayout;

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    if-eqz v1, :cond_4

    check-cast v1, Landroidx/constraintlayout/widget/ConstraintLayout$b;

    iput v0, v1, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    sub-int/2addr v3, p1

    iput v3, v1, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    const/4 p1, 0x0

    iput p1, v1, Landroidx/constraintlayout/widget/ConstraintLayout$b;->H:F

    invoke-virtual {p2, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object p1, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->j:Lcom/transsion/player/orplayer/g;

    if-eqz p1, :cond_2

    sget-object p2, Lcom/transsion/player/enum/ScaleMode;->SCALE_ASPECT_FILL:Lcom/transsion/player/enum/ScaleMode;

    invoke-interface {p1, p2}, Lcom/transsion/player/orplayer/g;->setScaleMode(Lcom/transsion/player/enum/ScaleMode;)V

    :cond_2
    iget-object p1, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->c:Lms/k0;

    iget-object p1, p1, Lms/k0;->p:Landroid/widget/LinearLayout;

    invoke-static {p1, v9}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    if-eqz p2, :cond_3

    check-cast p2, Landroidx/constraintlayout/widget/ConstraintLayout$b;

    iput v4, p2, Landroidx/constraintlayout/widget/ConstraintLayout$b;->l:I

    iput v8, p2, Landroidx/constraintlayout/widget/ConstraintLayout$b;->k:I

    iput v5, p2, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    invoke-virtual {p1, p2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_1

    :cond_3
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_5
    iget-object v3, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->c:Lms/k0;

    iget-object v3, v3, Lms/k0;->e:Landroid/widget/FrameLayout;

    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    if-eqz v1, :cond_8

    check-cast v1, Landroidx/constraintlayout/widget/ConstraintLayout$b;

    iput v0, v1, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    mul-int/2addr p2, v0

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    div-int/2addr p2, p1

    iput p2, v1, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    const/high16 p1, 0x3f000000    # 0.5f

    iput p1, v1, Landroidx/constraintlayout/widget/ConstraintLayout$b;->H:F

    invoke-virtual {v3, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object p1, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->j:Lcom/transsion/player/orplayer/g;

    if-eqz p1, :cond_6

    sget-object p2, Lcom/transsion/player/enum/ScaleMode;->SCALE_ASPECT_FIT:Lcom/transsion/player/enum/ScaleMode;

    invoke-interface {p1, p2}, Lcom/transsion/player/orplayer/g;->setScaleMode(Lcom/transsion/player/enum/ScaleMode;)V

    :cond_6
    iget-object p1, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->c:Lms/k0;

    iget-object p1, p1, Lms/k0;->p:Landroid/widget/LinearLayout;

    invoke-static {p1, v9}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    if-eqz p2, :cond_7

    check-cast p2, Landroidx/constraintlayout/widget/ConstraintLayout$b;

    iput v4, p2, Landroidx/constraintlayout/widget/ConstraintLayout$b;->l:I

    iput v8, p2, Landroidx/constraintlayout/widget/ConstraintLayout$b;->k:I

    iput v5, p2, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    invoke-virtual {p1, p2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_1

    :cond_7
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_8
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_9
    :goto_0
    new-instance v0, Lcom/transsion/shorttv/ui/widget/m0;

    invoke-direct {v0, p0, p1, p2}, Lcom/transsion/shorttv/ui/widget/m0;-><init>(Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;Ljava/lang/Integer;Ljava/lang/Integer;)V

    invoke-virtual {p0, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void

    :cond_a
    iget-object v0, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->c:Lms/k0;

    iget-object v0, v0, Lms/k0;->e:Landroid/widget/FrameLayout;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    if-eqz v1, :cond_b

    check-cast v1, Landroidx/constraintlayout/widget/ConstraintLayout$b;

    invoke-static {}, Lcom/blankj/utilcode/util/y;->e()I

    move-result v2

    iput v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    iget v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    mul-int/2addr p2, v2

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    div-int/2addr p2, p1

    iput p2, v1, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :goto_1
    return-void

    :cond_b
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_c
    :goto_2
    return-void
.end method

.method private final a0()V
    .locals 3

    new-instance v0, Lcom/transsion/shorttv/ui/widget/c;

    iget-object v1, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->c:Lms/k0;

    iget-object v1, v1, Lms/k0;->q:Landroid/widget/LinearLayout;

    const-string v2, "llDownloadGuideBubble"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v2, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView$f;

    invoke-direct {v2, p0}, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView$f;-><init>(Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;)V

    invoke-direct {v0, v1, v2}, Lcom/transsion/shorttv/ui/widget/c;-><init>(Landroid/view/View;Lcom/transsion/shorttv/ui/widget/c$b;)V

    iput-object v0, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->t:Lcom/transsion/shorttv/ui/widget/c;

    return-void
.end method

.method private static final a1(Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;Ljava/lang/Integer;Ljava/lang/Integer;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->Z0(Ljava/lang/Integer;Ljava/lang/Integer;)V

    return-void
.end method

.method public static final synthetic access$autoHideRightMenu(Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;)V
    .locals 0

    invoke-direct {p0}, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->L()V

    return-void
.end method

.method public static final synthetic access$callPayMethod(Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->Q(Ljava/lang/String;)V

    return-void
.end method

.method public static final synthetic access$favoriteResultToast(Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;Ljs/f;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->U(Ljs/f;)V

    return-void
.end method

.method public static final synthetic access$getData$p(Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;)Ljs/e;
    .locals 0

    iget-object p0, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->d:Ljs/e;

    return-object p0
.end method

.method public static final synthetic access$getMShortTvViewModel$p(Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;)Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;
    .locals 0

    iget-object p0, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->z:Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;

    return-object p0
.end method

.method public static final synthetic access$getOrPlayer$p(Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;)Lcom/transsion/player/orplayer/g;
    .locals 0

    iget-object p0, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->j:Lcom/transsion/player/orplayer/g;

    return-object p0
.end method

.method public static final synthetic access$getOrPlayerView$p(Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;)Lcom/transsion/player/ui/ORPlayerView;
    .locals 0

    iget-object p0, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->k:Lcom/transsion/player/ui/ORPlayerView;

    return-object p0
.end method

.method public static final synthetic access$getPagerLayoutManager$p(Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;)Lcom/transsion/shorttv/base/pager/PagerLayoutManager;
    .locals 0

    iget-object p0, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->l:Lcom/transsion/shorttv/base/pager/PagerLayoutManager;

    return-object p0
.end method

.method public static final synthetic access$getTAG$p(Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->a:Ljava/lang/String;

    return-object p0
.end method

.method public static final synthetic access$getViewBinding$p(Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;)Lms/k0;
    .locals 0

    iget-object p0, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->c:Lms/k0;

    return-object p0
.end method

.method public static final synthetic access$isHorizontalDragging$p(Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->p:Z

    return p0
.end method

.method public static final synthetic access$isLoading$p(Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->N:Z

    return p0
.end method

.method public static final synthetic access$onDoubleClick(Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;)V
    .locals 0

    invoke-direct {p0}, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->v0()V

    return-void
.end method

.method public static final synthetic access$playVideo(Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;)V
    .locals 0

    invoke-direct {p0}, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->H0()V

    return-void
.end method

.method public static final synthetic access$setHorizontalDragging$p(Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->p:Z

    return-void
.end method

.method public static final synthetic access$setLoading(Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->setLoading(Z)V

    return-void
.end method

.method public static final synthetic access$showRightMenu(Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;)V
    .locals 0

    invoke-direct {p0}, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->P0()V

    return-void
.end method

.method public static final synthetic access$updateProgress(Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;J)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->V0(J)V

    return-void
.end method

.method private final b0()V
    .locals 10

    sget-object v6, Llg/a;->a:Llg/a$a;

    iget-object v1, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->a:Ljava/lang/String;

    const/4 v4, 0x4

    const/4 v5, 0x0

    const-string v2, "initLanguage"

    const/4 v3, 0x0

    move-object v0, v6

    invoke-static/range {v0 .. v5}, Llg/a$a;->f(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    iget-boolean v0, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->F:Z

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->c:Lms/k0;

    iget-object v0, v0, Lms/k0;->K:Lcom/avery/subtitle/widget/SimpleSubtitleView;

    const/high16 v4, 0x41c00000    # 24.0f

    invoke-virtual {v0, v1, v4}, Landroidx/appcompat/widget/AppCompatTextView;->setTextSize(IF)V

    const-string v1, "sans-serif-medium"

    invoke-static {v1, v3}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    const-string v1, "#CC000000"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    const/high16 v4, 0x40800000    # 4.0f

    const/high16 v5, 0x40000000    # 2.0f

    invoke-virtual {v0, v4, v2, v5, v1}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->c:Lms/k0;

    iget-object v0, v0, Lms/k0;->K:Lcom/avery/subtitle/widget/SimpleSubtitleView;

    const/high16 v4, 0x41800000    # 16.0f

    invoke-virtual {v0, v1, v4}, Landroidx/appcompat/widget/AppCompatTextView;->setTextSize(IF)V

    sget-object v1, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    invoke-virtual {v0, v2, v2, v2, v3}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    :goto_0
    iget-object v0, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->z:Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;

    const/4 v7, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;->Z()Landroidx/lifecycle/LiveData;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->f()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/shorttv/bean/DubsInfoData;

    move-object v8, v0

    goto :goto_1

    :cond_1
    move-object v8, v7

    :goto_1
    const/4 v9, 0x1

    if-eqz v8, :cond_3

    invoke-virtual {v8}, Lcom/transsion/shorttv/bean/DubsInfoData;->getDubs()Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    if-eqz v0, :cond_3

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_2

    :cond_2
    move v0, v9

    goto :goto_3

    :cond_3
    :goto_2
    move v0, v3

    :goto_3
    iget-boolean v1, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->F:Z

    const-string v2, "tvLanguage"

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->c:Lms/k0;

    iget-object v1, v1, Lms/k0;->A:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1}, Lyr/b;->b(Landroid/view/View;)V

    const-string v1, "tvAudio"

    if-eqz v0, :cond_5

    if-eqz v8, :cond_4

    invoke-virtual {v8}, Lcom/transsion/shorttv/bean/DubsInfoData;->getDubs()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_4

    :cond_4
    move v0, v3

    :goto_4
    if-le v0, v9, :cond_5

    iget-object v0, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->c:Lms/k0;

    iget-object v0, v0, Lms/k0;->w:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Lyr/b;->e(Landroid/view/View;)V

    goto/16 :goto_8

    :cond_5
    iget-object v0, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->c:Lms/k0;

    iget-object v0, v0, Lms/k0;->w:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Lyr/b;->b(Landroid/view/View;)V

    goto/16 :goto_8

    :cond_6
    iget-object v1, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->c:Lms/k0;

    iget-object v1, v1, Lms/k0;->A:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1}, Lyr/b;->e(Landroid/view/View;)V

    if-eqz v0, :cond_b

    iget-object v1, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->a:Ljava/lang/String;

    if-eqz v8, :cond_7

    invoke-virtual {v8}, Lcom/transsion/shorttv/bean/DubsInfoData;->getDubs()Ljava/util/List;

    move-result-object v0

    goto :goto_5

    :cond_7
    move-object v0, v7

    :goto_5
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "initLanguage--- hasDubs :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x4

    const/4 v5, 0x0

    const/4 v3, 0x0

    move-object v0, v6

    invoke-static/range {v0 .. v5}, Llg/a$a;->f(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    iget-object v0, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->c:Lms/k0;

    iget-object v0, v0, Lms/k0;->A:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {v0, v9}, Landroid/view/View;->setSelected(Z)V

    if-eqz v8, :cond_a

    invoke-virtual {v8}, Lcom/transsion/shorttv/bean/DubsInfoData;->getDubs()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_a

    check-cast v0, Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_8
    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/shorttv/bean/DubsInfo;

    invoke-virtual {v1}, Lcom/transsion/shorttv/bean/DubsInfo;->getSubjectId()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->z:Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;

    if-eqz v3, :cond_9

    invoke-virtual {v3}, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;->H0()Landroidx/lifecycle/LiveData;

    move-result-object v3

    if-eqz v3, :cond_9

    invoke-virtual {v3}, Landroidx/lifecycle/LiveData;->f()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/transsion/shorttv/bean/Subject;

    if-eqz v3, :cond_9

    invoke-virtual {v3}, Lcom/transsion/shorttv/bean/Subject;->getSubjectId()Ljava/lang/String;

    move-result-object v3

    goto :goto_7

    :cond_9
    move-object v3, v7

    :goto_7
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    iget-object v2, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->c:Lms/k0;

    iget-object v2, v2, Lms/k0;->A:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {v1}, Lcom/transsion/shorttv/bean/DubsInfo;->getLanName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_6

    :cond_a
    return-void

    :cond_b
    :goto_8
    iget-object v0, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->d:Ljs/e;

    if-eqz v0, :cond_c

    invoke-virtual {v0}, Ljs/e;->c()I

    move-result v0

    if-nez v0, :cond_c

    move v3, v9

    :cond_c
    if-eqz v3, :cond_d

    iget-object v1, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->a:Ljava/lang/String;

    const/4 v4, 0x4

    const/4 v5, 0x0

    const-string v2, "\u9884\u544a\u7247\u6ca1\u6709\u5b57\u5e55\uff0c\u4e0d\u5904\u7406"

    const/4 v3, 0x0

    move-object v0, v6

    invoke-static/range {v0 .. v5}, Llg/a$a;->f(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    return-void

    :cond_d
    iget-object v1, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->a:Ljava/lang/String;

    iget-object v0, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->h:Ljava/lang/Integer;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ">>>>>>>--------------------initLanguage subtitle, position:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x4

    const/4 v5, 0x0

    const/4 v3, 0x0

    move-object v0, v6

    invoke-static/range {v0 .. v5}, Llg/a$a;->f(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    iget-object v0, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->f:Lcom/transsion/shorttv/ui/fragment/ShortTvDetailListFragment;

    if-eqz v0, :cond_11

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    if-eqz v2, :cond_11

    invoke-virtual {v2}, Landroid/app/Activity;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_11

    invoke-virtual {v2}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_e

    goto :goto_9

    :cond_e
    iget-object v5, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->d:Ljs/e;

    if-eqz v5, :cond_11

    iget-object v0, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->D:Lcom/transsion/shorttv/subtitle/a;

    if-eqz v0, :cond_f

    invoke-interface {v0}, Lcom/transsion/shorttv/subtitle/a;->onDestroy()V

    :cond_f
    sget-object v1, Lcom/transsion/shorttv/subtitle/a;->a:Lcom/transsion/shorttv/subtitle/a$a;

    iget-object v3, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->c:Lms/k0;

    iget-object v4, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->z:Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;

    if-eqz v4, :cond_10

    invoke-virtual {v4}, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;->H0()Landroidx/lifecycle/LiveData;

    move-result-object v0

    if-eqz v0, :cond_10

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->f()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/shorttv/bean/Subject;

    if-eqz v0, :cond_10

    invoke-virtual {v0}, Lcom/transsion/shorttv/bean/Subject;->getOps()Ljava/lang/String;

    move-result-object v7

    :cond_10
    move-object v6, v7

    invoke-virtual/range {v1 .. v6}, Lcom/transsion/shorttv/subtitle/a$a;->a(Landroidx/fragment/app/FragmentActivity;Lms/k0;Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;Ljs/e;Ljava/lang/String;)Lcom/transsion/shorttv/subtitle/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/transsion/shorttv/subtitle/a;->e()V

    new-instance v1, Lcom/transsion/shorttv/ui/widget/b0;

    invoke-direct {v1, p0}, Lcom/transsion/shorttv/ui/widget/b0;-><init>(Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;)V

    invoke-interface {v0, v1}, Lcom/transsion/shorttv/subtitle/a;->a(Lkotlin/jvm/functions/Function1;)V

    new-instance v1, Lcom/transsion/shorttv/ui/widget/c0;

    invoke-direct {v1, p0}, Lcom/transsion/shorttv/ui/widget/c0;-><init>(Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;)V

    invoke-interface {v0, v1}, Lcom/transsion/shorttv/subtitle/a;->b(Lkotlin/jvm/functions/Function1;)V

    iput-object v0, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->D:Lcom/transsion/shorttv/subtitle/a;

    :cond_11
    :goto_9
    return-void
.end method

.method private final b1(Ljs/e;)V
    .locals 12

    const/4 v0, 0x1

    const-wide/16 v1, 0x0

    invoke-direct {p0, v1, v2}, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->V0(J)V

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljs/e;->c()I

    move-result v1

    if-nez v1, :cond_0

    iget-object v0, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->c:Lms/k0;

    iget-object v0, v0, Lms/k0;->G:Lcom/transsion/shorttv/base/widget/TnTextView;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/transsion/shorttv/R$string;->short_tv_trailer:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->c:Lms/k0;

    iget-object v2, v2, Lms/k0;->G:Lcom/transsion/shorttv/base/widget/TnTextView;

    sget-object v3, Lkotlin/jvm/internal/StringCompanionObject;->a:Lkotlin/jvm/internal/StringCompanionObject;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Lcom/transsion/shorttv/utils/i;->e(Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object v1

    new-array v3, v0, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    invoke-static {v3, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    const-string v1, "EP%s"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "format(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    :goto_0
    const/4 v0, 0x0

    if-eqz p1, :cond_7

    invoke-virtual {p1}, Ljs/e;->d()Lcom/transsion/shorttv/bean/ShortTVItem;

    move-result-object p1

    if-eqz p1, :cond_7

    invoke-virtual {p1}, Lcom/transsion/shorttv/bean/ShortTVItem;->getVideo()Lcom/transsion/shorttv/bean/Media;

    move-result-object p1

    if-eqz p1, :cond_7

    invoke-virtual {p1}, Lcom/transsion/shorttv/bean/Media;->getFirstFrame()Lcom/transsion/shorttv/bean/FirstFrame;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Lcom/transsion/shorttv/bean/FirstFrame;->getUrl()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_2

    goto :goto_2

    :cond_2
    :goto_1
    move-object v3, v1

    goto :goto_3

    :cond_3
    :goto_2
    invoke-virtual {p1}, Lcom/transsion/shorttv/bean/Media;->getCover()Lcom/transsion/shorttv/bean/Cover;

    move-result-object p1

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Lcom/transsion/shorttv/bean/Cover;->getUrl()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_4
    move-object v3, v0

    :goto_3
    if-eqz v3, :cond_7

    sget-object v2, Las/b;->a:Las/b$a;

    iget v5, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->b:I

    const/16 v10, 0x78

    const/4 v11, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move v4, v5

    invoke-static/range {v2 .. v11}, Las/b$a;->e(Las/b$a;Ljava/lang/String;IIZZZIILjava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->c:Lms/k0;

    iget-object v0, v0, Lms/k0;->k:Landroidx/appcompat/widget/AppCompatImageView;

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    return-void

    :cond_5
    iget-object v0, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->f:Lcom/transsion/shorttv/ui/fragment/ShortTvDetailListFragment;

    if-eqz v0, :cond_8

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_6

    goto :goto_4

    :cond_6
    sget-object v1, Llg/a;->a:Llg/a$a;

    iget-object v2, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "into  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x4

    const/4 v6, 0x0

    const/4 v4, 0x0

    invoke-static/range {v1 .. v6}, Llg/a$a;->f(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    iget-object v1, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->c:Lms/k0;

    iget-object v1, v1, Lms/k0;->k:Landroidx/appcompat/widget/AppCompatImageView;

    invoke-virtual {v1, p1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    invoke-static {v0}, Lcom/bumptech/glide/Glide;->with(Landroidx/fragment/app/FragmentActivity;)Lcom/bumptech/glide/RequestManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p1

    new-instance v0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView$i;

    invoke-direct {v0, p0}, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView$i;-><init>(Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;)V

    invoke-virtual {p1, v0}, Lcom/bumptech/glide/RequestBuilder;->addListener(Lcom/bumptech/glide/request/RequestListener;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p1

    iget-object v0, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->c:Lms/k0;

    iget-object v0, v0, Lms/k0;->k:Landroidx/appcompat/widget/AppCompatImageView;

    invoke-virtual {p1, v0}, Lcom/bumptech/glide/RequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    goto :goto_4

    :cond_7
    iget-object p1, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->c:Lms/k0;

    iget-object p1, p1, Lms/k0;->k:Landroidx/appcompat/widget/AppCompatImageView;

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/AppCompatImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_8
    :goto_4
    return-void
.end method

.method private static final c0(Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;Z)Lkotlin/Unit;
    .locals 1

    iget-boolean v0, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->F:Z

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->c:Lms/k0;

    iget-object p0, p0, Lms/k0;->F:Landroidx/appcompat/widget/AppCompatTextView;

    const-string v0, "tvSubtitles"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    :goto_0
    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_3

    :cond_1
    iget-object v0, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->z:Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;->Z()Landroidx/lifecycle/LiveData;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->f()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/shorttv/bean/DubsInfoData;

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    :goto_1
    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/transsion/shorttv/bean/DubsInfoData;->getDubs()Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    if-eqz v0, :cond_4

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_2

    :cond_3
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :cond_4
    :goto_2
    iget-object v0, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->c:Lms/k0;

    iget-object v0, v0, Lms/k0;->A:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {v0, p1}, Landroid/view/View;->setSelected(Z)V

    if-nez p1, :cond_5

    iget-object p0, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->c:Lms/k0;

    iget-object p0, p0, Lms/k0;->A:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    move-result-object p1

    sget v0, Lcom/transsion/shorttv/R$string;->short_tv_language:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_5
    :goto_3
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method

.method private static final c1(Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;Landroidx/fragment/app/FragmentActivity;Lcom/transsion/shorttv/bean/Subject;ILandroidx/appcompat/widget/AppCompatTextView;Ljs/e;ZLjava/lang/String;Ljava/lang/String;)Lkotlin/Unit;
    .locals 7

    const-string v0, "errorCode"

    invoke-static {p7, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "errorMessage"

    invoke-static {p8, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p6, :cond_0

    iget-object p6, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->T:Lcom/transsion/shorttv/ad/common/STCommonVideoAdHelper;

    if-eqz p6, :cond_1

    new-instance p7, Lcom/transsion/shorttv/ui/widget/j0;

    invoke-direct {p7, p0, p5}, Lcom/transsion/shorttv/ui/widget/j0;-><init>(Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;Ljs/e;)V

    new-instance p8, Lcom/transsion/shorttv/ui/widget/k0;

    move-object v0, p8

    move-object v1, p0

    move-object v2, p2

    move v3, p3

    move-object v4, p5

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/transsion/shorttv/ui/widget/k0;-><init>(Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;Lcom/transsion/shorttv/bean/Subject;ILjs/e;Landroidx/appcompat/widget/AppCompatTextView;)V

    invoke-virtual {p6, p1, p7, p8}, Lcom/transsion/shorttv/ad/common/STCommonVideoAdHelper;->u(Landroid/app/Activity;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;)V

    goto :goto_0

    :cond_0
    sget-object v0, Lss/b;->a:Lss/b;

    const-string v3, "fail"

    const-string v6, "play"

    move-object v1, p2

    move v2, p3

    move-object v4, p8

    move-object v5, p7

    invoke-virtual/range {v0 .. v6}, Lss/b;->l(Lcom/transsion/shorttv/bean/Subject;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sget-object p1, Lfs/b;->a:Lfs/b$a;

    sget p2, Lcom/transsion/shorttv/R$string;->short_tv_ad_unlocked_get_ad_failed:I

    invoke-virtual {p1, p2}, Lfs/b$a;->d(I)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->T:Lcom/transsion/shorttv/ad/common/STCommonVideoAdHelper;

    if-eqz p4, :cond_1

    const/4 p0, 0x1

    invoke-virtual {p4, p0}, Landroid/view/View;->setEnabled(Z)V

    :cond_1
    :goto_0
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method

.method private static final d0(Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;Lts/b;)Lkotlin/Unit;
    .locals 1

    iget-boolean v0, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->F:Z

    if-nez v0, :cond_1

    iget-object p0, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->c:Lms/k0;

    iget-object p0, p0, Lms/k0;->A:Landroidx/appcompat/widget/AppCompatTextView;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lts/b;->a()Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;->getLanName()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method

.method private static final d1(Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;Ljs/e;)Lkotlin/Unit;
    .locals 5

    iget-object v0, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->z:Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;

    if-eqz v0, :cond_c

    invoke-virtual {v0}, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;->H0()Landroidx/lifecycle/LiveData;

    move-result-object v0

    if-eqz v0, :cond_c

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->f()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/shorttv/bean/Subject;

    if-nez v0, :cond_0

    goto/16 :goto_7

    :cond_0
    if-eqz p1, :cond_a

    invoke-virtual {p1}, Ljs/e;->d()Lcom/transsion/shorttv/bean/ShortTVItem;

    move-result-object p1

    if-eqz p1, :cond_a

    sget-object v1, Lur/a;->a:Lur/a;

    const-string v1, "unlockEpCount"

    const-string v2, "ShortTvPlayerUnlockPlayScene"

    const/4 v3, 0x0

    :try_start_0
    sget-object v4, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    sget-object v4, Lcom/transsion/ad/scene/d;->a:Lcom/transsion/ad/scene/d;

    invoke-virtual {v4, v2}, Lcom/transsion/ad/scene/d;->b(Ljava/lang/String;)Lcom/google/gson/JsonObject;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v2, v1}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v1

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_4

    :cond_1
    move-object v1, v3

    :goto_0
    const-class v2, Ljava/lang/Integer;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->b(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    const-class v4, Ljava/lang/String;

    invoke-static {v4}, Lkotlin/jvm/internal/Reflection;->b(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v4

    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    :cond_2
    :goto_1
    move-object v1, v3

    goto :goto_3

    :cond_3
    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v4}, Lkotlin/jvm/internal/Reflection;->b(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v4

    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Lcom/google/gson/JsonElement;->getAsInt()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_2

    :cond_4
    move-object v1, v3

    :goto_2
    instance-of v2, v1, Ljava/lang/Integer;

    if-nez v2, :cond_7

    goto :goto_1

    :cond_5
    sget-object v4, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-static {v4}, Lkotlin/jvm/internal/Reflection;->b(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v4

    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/google/gson/JsonElement;->getAsLong()J

    goto :goto_1

    :cond_6
    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-static {v4}, Lkotlin/jvm/internal/Reflection;->b(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v4

    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/google/gson/JsonElement;->getAsBoolean()Z

    goto :goto_1

    :cond_7
    :goto_3
    invoke-static {v1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_5

    :goto_4
    sget-object v2, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v1}, Lkotlin/ResultKt;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    :goto_5
    invoke-static {v1}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v2

    if-nez v2, :cond_8

    move-object v3, v1

    :cond_8
    check-cast v3, Ljava/lang/Integer;

    if-eqz v3, :cond_9

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_6

    :cond_9
    const/4 v1, 0x1

    :goto_6
    sget-object v2, Lzr/b;->a:Lzr/b;

    invoke-virtual {v2, v0, p1, v1}, Lzr/b;->g(Lcom/transsion/shorttv/bean/Subject;Lcom/transsion/shorttv/bean/ShortTVItem;I)V

    :cond_a
    invoke-virtual {v0}, Lcom/transsion/shorttv/bean/Subject;->getSubjectId()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_b

    iget-object p0, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->z:Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;

    if-eqz p0, :cond_b

    invoke-virtual {p0, p1}, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;->a1(Ljava/lang/String;)V

    :cond_b
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :cond_c
    :goto_7
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method

.method private final e0()V
    .locals 3

    new-instance v0, Lcom/transsion/shorttv/base/widget/e;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->c:Lms/k0;

    iget-object v2, v2, Lms/k0;->J:Lcom/transsion/shorttv/ui/widget/ShortTvVideoProgressDragGestureView;

    invoke-direct {v0, v1, v2}, Lcom/transsion/shorttv/base/widget/e;-><init>(Landroid/content/Context;Landroid/view/View;)V

    new-instance v1, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView$g;

    invoke-direct {v1, p0}, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView$g;-><init>(Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;)V

    invoke-virtual {v0, v1}, Lcom/transsion/shorttv/base/widget/e;->r(Lcom/transsion/shorttv/base/widget/e$a;)V

    iget-object v0, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->c:Lms/k0;

    iget-object v0, v0, Lms/k0;->u:Landroidx/appcompat/widget/AppCompatSeekBar;

    new-instance v1, Lcom/transsion/shorttv/ui/widget/n0;

    invoke-direct {v1}, Lcom/transsion/shorttv/ui/widget/n0;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method

.method private static final e1(Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;Lcom/transsion/shorttv/bean/Subject;ILjs/e;Landroidx/appcompat/widget/AppCompatTextView;Z)Lkotlin/Unit;
    .locals 8

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->T:Lcom/transsion/shorttv/ad/common/STCommonVideoAdHelper;

    if-eqz p5, :cond_1

    sget-object v1, Lss/b;->a:Lss/b;

    const-string v6, "0"

    const-string v7, "play"

    const-string v4, "success"

    const-string v5, ""

    move-object v2, p1

    move v3, p2

    invoke-virtual/range {v1 .. v7}, Lss/b;->l(Lcom/transsion/shorttv/bean/Subject;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->j:Lcom/transsion/player/orplayer/g;

    iget-object p2, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->k:Lcom/transsion/player/ui/ORPlayerView;

    invoke-virtual {p0, p1, p2, p3}, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->updateShortTvInfo(Lcom/transsion/player/orplayer/g;Lcom/transsion/player/ui/ORPlayerView;Ljs/e;)V

    if-eqz p3, :cond_0

    invoke-direct {p0, p3}, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->o0(Ljs/e;)V

    :cond_0
    sget-object p0, Lfs/b;->a:Lfs/b$a;

    sget p1, Lcom/transsion/shorttv/R$string;->short_tv_locked_episode_unlocked:I

    invoke-virtual {p0, p1}, Lfs/b$a;->d(I)V

    goto :goto_0

    :cond_1
    sget-object v0, Lss/b;->a:Lss/b;

    const-string v5, "0"

    const-string v6, "play"

    const-string v3, "cancel"

    const-string v4, ""

    move-object v1, p1

    move v2, p2

    invoke-virtual/range {v0 .. v6}, Lss/b;->l(Lcom/transsion/shorttv/bean/Subject;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    if-eqz p4, :cond_2

    const/4 p0, 0x1

    invoke-virtual {p4, p0}, Landroid/view/View;->setEnabled(Z)V

    :cond_2
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method

.method private static final f0(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method private final g0()V
    .locals 12

    iget-object v0, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->z:Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;->a0()Landroidx/lifecycle/b0;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->f()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-eqz v0, :cond_2

    check-cast v0, Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lcom/transsion/shorttv/bean/ShortTVItem;

    iget-object v4, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->d:Ljs/e;

    if-eqz v4, :cond_0

    invoke-virtual {v3}, Lcom/transsion/shorttv/bean/ShortTVItem;->getEp()I

    move-result v3

    invoke-virtual {v4}, Ljs/e;->c()I

    move-result v4

    if-ne v3, v4, :cond_0

    goto :goto_0

    :cond_1
    move-object v2, v1

    :goto_0
    check-cast v2, Lcom/transsion/shorttv/bean/ShortTVItem;

    if-nez v2, :cond_4

    :cond_2
    iget-object v0, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->d:Ljs/e;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljs/e;->d()Lcom/transsion/shorttv/bean/ShortTVItem;

    move-result-object v2

    goto :goto_1

    :cond_3
    move-object v2, v1

    :cond_4
    :goto_1
    if-eqz v2, :cond_5

    invoke-virtual {v2}, Lcom/transsion/shorttv/bean/ShortTVItem;->getVideo()Lcom/transsion/shorttv/bean/Media;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lcom/transsion/shorttv/bean/Media;->getAddressList()Ljava/util/List;

    move-result-object v1

    :cond_5
    iget-object v0, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->c:Lms/k0;

    iget-object v0, v0, Lms/k0;->D:Landroidx/appcompat/widget/AppCompatTextView;

    const-string v2, "tvResolution"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Lyr/b;->e(Landroid/view/View;)V

    move-object v0, v1

    check-cast v0, Ljava/util/Collection;

    const/4 v2, 0x0

    const-string v3, "k_short_tv_resolution"

    const-string v4, "P"

    if-eqz v0, :cond_9

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_6

    goto/16 :goto_2

    :cond_6
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v5, 0x1

    if-ne v0, v5, :cond_7

    sget-object v6, Llg/a;->a:Llg/a$a;

    iget-object v7, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->a:Ljava/lang/String;

    const/4 v10, 0x4

    const/4 v11, 0x0

    const-string v8, "initResolution, size 1"

    const/4 v9, 0x0

    invoke-static/range {v6 .. v11}, Llg/a$a;->f(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    iget-object v0, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->c:Lms/k0;

    iget-object v0, v0, Lms/k0;->D:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->i0(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/shorttv/bean/Video;

    invoke-virtual {v1}, Lcom/transsion/shorttv/bean/Video;->getResolution()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    :cond_7
    sget-object v0, Lcom/transsion/shorttv/utils/h;->a:Lcom/transsion/shorttv/utils/h;

    invoke-virtual {v0}, Lcom/transsion/shorttv/utils/h;->d()Lcom/tencent/mmkv/MMKV;

    move-result-object v0

    invoke-virtual {v0, v3, v2}, Lcom/tencent/mmkv/MMKV;->getInt(Ljava/lang/String;I)I

    move-result v0

    sget-object v2, Llg/a;->a:Llg/a$a;

    iget-object v6, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "initResolution, --save resolution:"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v9, 0x4

    const/4 v10, 0x0

    const/4 v8, 0x0

    move-object v5, v2

    invoke-static/range {v5 .. v10}, Llg/a$a;->f(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    invoke-static {v1, v0}, Lcom/transsion/shorttv/utils/i;->d(Ljava/util/List;I)Lcom/transsion/shorttv/bean/Video;

    move-result-object v1

    if-eqz v1, :cond_8

    iget-object v6, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "initResolution, --target resolution:"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v9, 0x4

    const/4 v10, 0x0

    const/4 v8, 0x0

    move-object v5, v2

    invoke-static/range {v5 .. v10}, Llg/a$a;->f(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    iget-object v0, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->c:Lms/k0;

    iget-object v0, v0, Lms/k0;->D:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {v1}, Lcom/transsion/shorttv/bean/Video;->getResolution()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_8
    return-void

    :cond_9
    :goto_2
    sget-object v5, Llg/a;->a:Llg/a$a;

    iget-object v6, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->a:Ljava/lang/String;

    const/4 v9, 0x4

    const/4 v10, 0x0

    const-string v7, "initResolution, \u5206\u8fa8\u7387\u5217\u8868\u4e3a\u7a7a"

    const/4 v8, 0x0

    invoke-static/range {v5 .. v10}, Llg/a$a;->f(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    iget-object v0, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->c:Lms/k0;

    iget-object v0, v0, Lms/k0;->D:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {v0}, Landroidx/appcompat/widget/AppCompatTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz v0, :cond_a

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_c

    :cond_a
    sget-object v0, Lcom/transsion/shorttv/utils/h;->a:Lcom/transsion/shorttv/utils/h;

    invoke-virtual {v0}, Lcom/transsion/shorttv/utils/h;->d()Lcom/tencent/mmkv/MMKV;

    move-result-object v0

    invoke-virtual {v0, v3, v2}, Lcom/tencent/mmkv/MMKV;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-lez v0, :cond_b

    goto :goto_3

    :cond_b
    const/16 v0, 0x2d0

    :goto_3
    iget-object v1, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->c:Lms/k0;

    iget-object v1, v1, Lms/k0;->D:Landroidx/appcompat/widget/AppCompatTextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_c
    return-void
.end method

.method public static synthetic h(Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;Ljava/lang/Boolean;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->T(Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;Ljava/lang/Boolean;)V

    return-void
.end method

.method private final h0()V
    .locals 8

    sget-object v0, Lcom/transsion/shorttv/utils/h;->a:Lcom/transsion/shorttv/utils/h;

    invoke-virtual {v0}, Lcom/transsion/shorttv/utils/h;->d()Lcom/tencent/mmkv/MMKV;

    move-result-object v0

    const-string v1, "k_short_tv_speed"

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1, v2}, Lcom/tencent/mmkv/MMKV;->getFloat(Ljava/lang/String;F)F

    move-result v0

    float-to-int v1, v0

    int-to-float v2, v1

    cmpg-float v2, v2, v0

    if-nez v2, :cond_0

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    invoke-static {v0}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v1

    :goto_0
    iget-object v2, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->c:Lms/k0;

    iget-object v2, v2, Lms/k0;->E:Landroidx/appcompat/widget/AppCompatTextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "x"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->j:Lcom/transsion/player/orplayer/g;

    if-eqz v1, :cond_1

    invoke-interface {v1, v0}, Lcom/transsion/player/orplayer/g;->setSpeed(F)V

    :cond_1
    sget-object v2, Llg/a;->a:Llg/a$a;

    iget-object v3, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "initVideoSpeed, speed:"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x4

    const/4 v7, 0x0

    const/4 v5, 0x0

    invoke-static/range {v2 .. v7}, Llg/a$a;->f(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    return-void
.end method

.method public static synthetic i(Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;Z)V
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->p0(Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;Z)V

    return-void
.end method

.method private final i0()Z
    .locals 1

    invoke-direct {p0}, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->j0()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public static synthetic j(Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->M0(Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;Landroid/view/View;)V

    return-void
.end method

.method private final j0()Z
    .locals 4

    sget-object v0, Lzr/b;->a:Lzr/b;

    iget-object v1, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->z:Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;->H0()Landroidx/lifecycle/LiveData;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroidx/lifecycle/LiveData;->f()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/shorttv/bean/Subject;

    goto :goto_0

    :cond_0
    move-object v1, v2

    :goto_0
    iget-object v3, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->d:Ljs/e;

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Ljs/e;->d()Lcom/transsion/shorttv/bean/ShortTVItem;

    move-result-object v2

    :cond_1
    invoke-virtual {v0, v1, v2}, Lzr/b;->c(Lcom/transsion/shorttv/bean/Subject;Lcom/transsion/shorttv/bean/ShortTVItem;)Z

    move-result v0

    return v0
.end method

.method public static synthetic k(Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;Lcom/transsion/shorttv/bean/DubsInfo;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->r0(Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;Lcom/transsion/shorttv/bean/DubsInfo;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method private final k0(Ljs/e;)V
    .locals 9

    iget-object v0, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->c:Lms/k0;

    iget-object v0, v0, Lms/k0;->b:Lcom/transsion/shorttv/ad/playeroverlayad/ShortTvPlayerOverlayAdContainer;

    const-string v1, "adOverlayContainerView"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    invoke-direct {p0}, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->j0()Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v2, Lur/a;->a:Lur/a;

    const/4 v6, 0x4

    const/4 v7, 0x0

    const-string v3, "overlay"

    const-string v4, "loadAd, this video is locked, don\'t load"

    const/4 v5, 0x0

    invoke-static/range {v2 .. v7}, Lur/a;->e(Lur/a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    return-void

    :cond_0
    sget-object v1, Lcom/transsion/shorttv/ad/playeroverlayad/ShortTvPlayerOverlayAdManager;->a:Lcom/transsion/shorttv/ad/playeroverlayad/ShortTvPlayerOverlayAdManager;

    invoke-virtual {p1}, Ljs/e;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/transsion/shorttv/ad/playeroverlayad/ShortTvPlayerOverlayAdManager;->c(Ljava/lang/String;)Lcom/transsion/shorttv/ad/playeroverlayad/a;

    move-result-object v1

    if-nez v1, :cond_1

    return-void

    :cond_1
    invoke-virtual {v1}, Lcom/transsion/shorttv/ad/playeroverlayad/a;->d()Z

    move-result v2

    if-nez v2, :cond_2

    sget-object v3, Lur/a;->a:Lur/a;

    invoke-virtual {p1}, Ljs/e;->a()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "loadAd, this video no need to load, key="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v7, 0x4

    const/4 v8, 0x0

    const-string v4, "overlay"

    const/4 v6, 0x0

    invoke-static/range {v3 .. v8}, Lur/a;->c(Lur/a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    return-void

    :cond_2
    const/4 p1, 0x1

    invoke-virtual {v1, p1}, Lcom/transsion/shorttv/ad/playeroverlayad/a;->i(Z)V

    sget-object p1, Lur/a;->a:Lur/a;

    invoke-virtual {v1}, Lcom/transsion/shorttv/ad/playeroverlayad/a;->c()Lcom/transsion/shorttv/ad/AdLoadState;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "loadAd, adLoadState="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x4

    const/4 v7, 0x0

    const-string v3, "overlay"

    const/4 v5, 0x0

    move-object v2, p1

    invoke-static/range {v2 .. v7}, Lur/a;->g(Lur/a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    invoke-virtual {v1}, Lcom/transsion/shorttv/ad/playeroverlayad/a;->c()Lcom/transsion/shorttv/ad/AdLoadState;

    move-result-object v2

    sget-object v3, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView$a;->b:[I

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v2, v3, v2

    packed-switch v2, :pswitch_data_0

    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p1

    :pswitch_0
    invoke-direct {p0}, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->j0()Z

    move-result v2

    if-eqz v2, :cond_3

    const/4 v6, 0x4

    const/4 v7, 0x0

    const-string v3, "overlay"

    const-string v4, "show cached ad, video is locked, skip show"

    const/4 v5, 0x0

    move-object v2, p1

    invoke-static/range {v2 .. v7}, Lur/a;->e(Lur/a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    return-void

    :cond_3
    invoke-virtual {v1}, Lcom/transsion/shorttv/ad/playeroverlayad/a;->b()Lcom/transsion/shorttv/ad/playeroverlayad/e;

    move-result-object p1

    if-eqz p1, :cond_4

    new-instance v2, Lcom/transsion/shorttv/ui/widget/i0;

    invoke-direct {v2, v1}, Lcom/transsion/shorttv/ui/widget/i0;-><init>(Lcom/transsion/shorttv/ad/playeroverlayad/a;)V

    invoke-virtual {p1, v0, v2}, Lcom/transsion/shorttv/ad/playeroverlayad/e;->k(Lcom/transsion/shorttv/ad/playeroverlayad/ShortTvPlayerOverlayAdContainer;Lkotlin/jvm/functions/Function0;)V

    goto :goto_0

    :pswitch_1
    sget-object p1, Lcom/transsion/shorttv/ad/AdLoadState;->LOADING:Lcom/transsion/shorttv/ad/AdLoadState;

    invoke-virtual {v1, p1}, Lcom/transsion/shorttv/ad/playeroverlayad/a;->g(Lcom/transsion/shorttv/ad/AdLoadState;)V

    invoke-virtual {v1}, Lcom/transsion/shorttv/ad/playeroverlayad/a;->b()Lcom/transsion/shorttv/ad/playeroverlayad/e;

    move-result-object p1

    if-eqz p1, :cond_4

    new-instance v2, Lcom/transsion/shorttv/ui/widget/x;

    invoke-direct {v2, v1, p0, v0}, Lcom/transsion/shorttv/ui/widget/x;-><init>(Lcom/transsion/shorttv/ad/playeroverlayad/a;Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;Lcom/transsion/shorttv/ad/playeroverlayad/ShortTvPlayerOverlayAdContainer;)V

    invoke-virtual {p1, v2}, Lcom/transsion/shorttv/ad/playeroverlayad/e;->i(Lkotlin/jvm/functions/Function1;)V

    :cond_4
    :goto_0
    :pswitch_2
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method public static synthetic l(Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;FLcom/transsion/shorttv/utils/ShortTvVideoCtrBean;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->D0(Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;FLcom/transsion/shorttv/utils/ShortTvVideoCtrBean;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method private static final l0(Lcom/transsion/shorttv/ad/playeroverlayad/a;Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;Lcom/transsion/shorttv/ad/playeroverlayad/ShortTvPlayerOverlayAdContainer;Z)Lkotlin/Unit;
    .locals 6

    if-eqz p3, :cond_1

    sget-object p3, Lcom/transsion/shorttv/ad/AdLoadState;->SUCCEED:Lcom/transsion/shorttv/ad/AdLoadState;

    invoke-virtual {p0, p3}, Lcom/transsion/shorttv/ad/playeroverlayad/a;->g(Lcom/transsion/shorttv/ad/AdLoadState;)V

    invoke-direct {p1}, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->j0()Z

    move-result p1

    if-eqz p1, :cond_0

    sget-object v0, Lur/a;->a:Lur/a;

    const/4 v4, 0x4

    const/4 v5, 0x0

    const-string v1, "overlay"

    const-string v2, "loadAd callback, video is now locked, skip show"

    const/4 v3, 0x0

    invoke-static/range {v0 .. v5}, Lur/a;->e(Lur/a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lcom/transsion/shorttv/ad/playeroverlayad/a;->b()Lcom/transsion/shorttv/ad/playeroverlayad/e;

    move-result-object p1

    if-eqz p1, :cond_2

    new-instance p3, Lcom/transsion/shorttv/ui/widget/f0;

    invoke-direct {p3, p0}, Lcom/transsion/shorttv/ui/widget/f0;-><init>(Lcom/transsion/shorttv/ad/playeroverlayad/a;)V

    invoke-virtual {p1, p2, p3}, Lcom/transsion/shorttv/ad/playeroverlayad/e;->k(Lcom/transsion/shorttv/ad/playeroverlayad/ShortTvPlayerOverlayAdContainer;Lkotlin/jvm/functions/Function0;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/transsion/shorttv/ad/playeroverlayad/a;->a()V

    sget-object p1, Lcom/transsion/shorttv/ad/AdLoadState;->FAILED:Lcom/transsion/shorttv/ad/AdLoadState;

    invoke-virtual {p0, p1}, Lcom/transsion/shorttv/ad/playeroverlayad/a;->g(Lcom/transsion/shorttv/ad/AdLoadState;)V

    :cond_2
    :goto_0
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method

.method public static synthetic m(Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;Lts/b;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->d0(Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;Lts/b;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method private static final m0(Lcom/transsion/shorttv/ad/playeroverlayad/a;)Lkotlin/Unit;
    .locals 0

    invoke-virtual {p0}, Lcom/transsion/shorttv/ad/playeroverlayad/a;->a()V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method

.method public static synthetic n(Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;Lcom/transsion/shorttv/bean/Subject;ILjs/e;Landroidx/appcompat/widget/AppCompatTextView;Z)Lkotlin/Unit;
    .locals 0

    invoke-static/range {p0 .. p5}, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->e1(Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;Lcom/transsion/shorttv/bean/Subject;ILjs/e;Landroidx/appcompat/widget/AppCompatTextView;Z)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method private static final n0(Lcom/transsion/shorttv/ad/playeroverlayad/a;)Lkotlin/Unit;
    .locals 0

    invoke-virtual {p0}, Lcom/transsion/shorttv/ad/playeroverlayad/a;->a()V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method

.method public static synthetic o(Lcom/transsion/shorttv/ad/playeroverlayad/a;Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;Lcom/transsion/shorttv/ad/playeroverlayad/ShortTvPlayerOverlayAdContainer;Z)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->l0(Lcom/transsion/shorttv/ad/playeroverlayad/a;Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;Lcom/transsion/shorttv/ad/playeroverlayad/ShortTvPlayerOverlayAdContainer;Z)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method private final o0(Ljs/e;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->k0(Ljs/e;)V

    return-void
.end method

.method public static synthetic p(Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;Lcom/transsion/shorttv/ui/fragment/ShortTvDetailListFragment;Lqs/i;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->P(Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;Lcom/transsion/shorttv/ui/fragment/ShortTvDetailListFragment;Lqs/i;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method private static final p0(Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;Z)V
    .locals 4

    iget-boolean v0, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->F:Z

    if-eqz v0, :cond_0

    xor-int/lit8 v0, p1, 0x1

    invoke-direct {p0, v0}, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->Y0(Z)V

    :cond_0
    const-string v0, "progressBar"

    const-string v1, "llCtr"

    const-string v2, "groupPayLockHide"

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->E:Landroidx/constraintlayout/widget/Group;

    invoke-static {p1}, Lyr/b;->e(Landroid/view/View;)V

    iget-object p1, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->c:Lms/k0;

    iget-object p1, p1, Lms/k0;->i:Landroidx/constraintlayout/widget/Group;

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lyr/b;->e(Landroid/view/View;)V

    iget-object p1, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->c:Lms/k0;

    iget-object p1, p1, Lms/k0;->p:Landroid/widget/LinearLayout;

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lyr/b;->e(Landroid/view/View;)V

    iget-boolean p1, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->S:Z

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->z:Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;->H0()Landroidx/lifecycle/LiveData;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroidx/lifecycle/LiveData;->f()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/transsion/shorttv/bean/Subject;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/transsion/shorttv/bean/Subject;->getUnlockType()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_1

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p1, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-ne p1, v1, :cond_1

    iget-object p1, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->c:Lms/k0;

    iget-object p1, p1, Lms/k0;->i:Landroidx/constraintlayout/widget/Group;

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lyr/b;->b(Landroid/view/View;)V

    :cond_1
    iget-boolean p1, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->F:Z

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->c:Lms/k0;

    iget-object p1, p1, Lms/k0;->s:Landroid/widget/ProgressBar;

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lyr/b;->e(Landroid/view/View;)V

    :cond_2
    invoke-direct {p0}, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->Q0()V

    goto :goto_0

    :cond_3
    iget-object p1, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->E:Landroidx/constraintlayout/widget/Group;

    invoke-static {p1}, Lyr/b;->b(Landroid/view/View;)V

    iget-object p1, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->c:Lms/k0;

    iget-object p1, p1, Lms/k0;->i:Landroidx/constraintlayout/widget/Group;

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lyr/b;->b(Landroid/view/View;)V

    iget-object p1, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->c:Lms/k0;

    iget-object p1, p1, Lms/k0;->p:Landroid/widget/LinearLayout;

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lyr/b;->b(Landroid/view/View;)V

    iget-object p1, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->t:Lcom/transsion/shorttv/ui/widget/c;

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Lcom/transsion/shorttv/ui/widget/c;->f()V

    :cond_4
    iget-boolean p1, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->F:Z

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->c:Lms/k0;

    iget-object p1, p1, Lms/k0;->s:Landroid/widget/ProgressBar;

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lyr/b;->b(Landroid/view/View;)V

    :cond_5
    invoke-direct {p0}, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->Y()V

    :goto_0
    return-void
.end method

.method public static synthetic q(Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->w0(Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;)V

    return-void
.end method

.method private final q0()V
    .locals 3

    sget-object v0, Lnh/m;->a:Lnh/m;

    invoke-virtual {v0}, Lnh/m;->e()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lfs/b;->a:Lfs/b$a;

    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    move-result-object v1

    sget v2, Lcom/transsion/shorttv/R$string;->short_tv_no_network_toast:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfs/b$a;->e(Ljava/lang/CharSequence;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->z:Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;->Z()Landroidx/lifecycle/LiveData;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->f()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/shorttv/bean/DubsInfoData;

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/transsion/shorttv/bean/DubsInfoData;->getDubs()Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    if-eqz v0, :cond_4

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    new-instance v0, Lcom/transsion/shorttv/ui/dialog/ShortTvLanguageSelectDialog;

    invoke-direct {v0}, Lcom/transsion/shorttv/ui/dialog/ShortTvLanguageSelectDialog;-><init>()V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/transsion/shorttv/ui/dialog/ShortTvLanguageSelectDialog;->D0(I)V

    new-instance v1, Lcom/transsion/shorttv/ui/widget/h0;

    invoke-direct {v1, p0}, Lcom/transsion/shorttv/ui/widget/h0;-><init>(Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;)V

    invoke-virtual {v0, v1}, Lcom/transsion/shorttv/ui/dialog/ShortTvLanguageSelectDialog;->C0(Lkotlin/jvm/functions/Function1;)V

    iget-object v1, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->f:Lcom/transsion/shorttv/ui/fragment/ShortTvDetailListFragment;

    if-eqz v1, :cond_3

    const-string v2, "ShortTvLanguageSelectDialog_Audio"

    invoke-virtual {v0, v1, v2}, Lcom/transsion/shorttv/base/dialog/BaseDialog;->j0(Landroidx/fragment/app/Fragment;Ljava/lang/String;)V

    :cond_3
    return-void

    :cond_4
    :goto_1
    sget-object v0, Lfs/b;->a:Lfs/b$a;

    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    move-result-object v1

    sget v2, Lcom/transsion/shorttv/R$string;->short_tv_no_error_content:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfs/b$a;->e(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public static synthetic r(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->f0(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method private static final r0(Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;Lcom/transsion/shorttv/bean/DubsInfo;)Lkotlin/Unit;
    .locals 1

    const-string v0, "item"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->s0(Lcom/transsion/shorttv/bean/DubsInfo;)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method

.method public static synthetic s(Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;Lcom/transsion/shorttv/bean/DubsInfo;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->F0(Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;Lcom/transsion/shorttv/bean/DubsInfo;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method private final s0(Lcom/transsion/shorttv/bean/DubsInfo;)V
    .locals 19

    move-object/from16 v0, p0

    sget-object v7, Llg/a;->a:Llg/a$a;

    iget-object v2, v0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->a:Ljava/lang/String;

    invoke-virtual/range {p1 .. p1}, Lcom/transsion/shorttv/bean/DubsInfo;->getLanName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {p1 .. p1}, Lcom/transsion/shorttv/bean/DubsInfo;->getSubjectId()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onAudioTrackSelect, lanName:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", subjectId:"

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x4

    const/4 v6, 0x0

    const/4 v4, 0x0

    move-object v1, v7

    invoke-static/range {v1 .. v6}, Llg/a$a;->f(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    iget-object v1, v0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->z:Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;

    const/4 v8, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;->H0()Landroidx/lifecycle/LiveData;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroidx/lifecycle/LiveData;->f()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/shorttv/bean/Subject;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/transsion/shorttv/bean/Subject;->getSubjectId()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v8

    :goto_0
    if-eqz v1, :cond_1

    invoke-virtual/range {p1 .. p1}, Lcom/transsion/shorttv/bean/DubsInfo;->getSubjectId()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    sget-object v2, Lcom/transsion/shorttv/utils/h;->a:Lcom/transsion/shorttv/utils/h;

    invoke-virtual {v2}, Lcom/transsion/shorttv/utils/h;->d()Lcom/tencent/mmkv/MMKV;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "k_audio_subject_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {p1 .. p1}, Lcom/transsion/shorttv/bean/DubsInfo;->getSubjectId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Lcom/tencent/mmkv/MMKV;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    :cond_1
    iget-object v1, v0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->z:Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;

    if-eqz v1, :cond_2

    invoke-virtual/range {p1 .. p1}, Lcom/transsion/shorttv/bean/DubsInfo;->getSubjectId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;->f1(Ljava/lang/String;)V

    :cond_2
    iget-object v1, v0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->z:Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;

    const/4 v9, 0x0

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;->u0()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual/range {p1 .. p1}, Lcom/transsion/shorttv/bean/DubsInfo;->getSubjectId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_1

    :cond_3
    move v1, v9

    :goto_1
    const/4 v10, 0x1

    if-eqz v1, :cond_17

    iget-object v1, v0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->z:Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;

    if-eqz v1, :cond_7

    invoke-virtual {v1}, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;->u0()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v1

    if-eqz v1, :cond_7

    invoke-virtual/range {p1 .. p1}, Lcom/transsion/shorttv/bean/DubsInfo;->getSubjectId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/lifecycle/b0;

    if-eqz v1, :cond_7

    invoke-virtual {v1}, Landroidx/lifecycle/LiveData;->f()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    if-eqz v1, :cond_7

    check-cast v1, Ljava/lang/Iterable;

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lcom/transsion/shorttv/bean/ShortTVItem;

    iget-object v4, v0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->d:Ljs/e;

    if-eqz v4, :cond_5

    invoke-virtual {v3}, Lcom/transsion/shorttv/bean/ShortTVItem;->getEp()I

    move-result v3

    invoke-virtual {v4}, Ljs/e;->c()I

    move-result v4

    if-ne v3, v4, :cond_5

    move v3, v10

    goto :goto_2

    :cond_5
    move v3, v9

    :goto_2
    if-eqz v3, :cond_4

    goto :goto_3

    :cond_6
    move-object v2, v8

    :goto_3
    check-cast v2, Lcom/transsion/shorttv/bean/ShortTVItem;

    goto :goto_4

    :cond_7
    move-object v2, v8

    :goto_4
    if-nez v2, :cond_c

    sget-object v11, Llg/a;->a:Llg/a$a;

    iget-object v12, v0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->a:Ljava/lang/String;

    const/4 v15, 0x4

    const/16 v16, 0x0

    const-string v13, "onAudioTrackSelect, \u6709\u8be5\u4f5c\u54c1\u4fe1\u606f\uff0c\u6ca1\u6709\u8be5\u96c6\u4fe1\u606f\uff0c\u9700\u8981\u8bf7\u6c42"

    const/4 v14, 0x0

    invoke-static/range {v11 .. v16}, Llg/a$a;->f(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    invoke-virtual/range {p1 .. p1}, Lcom/transsion/shorttv/bean/DubsInfo;->getSubjectId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1c

    iget-object v2, v0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->z:Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;

    if-eqz v2, :cond_8

    invoke-virtual {v2}, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;->X()Landroidx/lifecycle/b0;

    move-result-object v2

    if-eqz v2, :cond_8

    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v2, v3}, Landroidx/lifecycle/b0;->q(Ljava/lang/Object;)V

    :cond_8
    iget-object v2, v0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->z:Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;

    if-eqz v2, :cond_a

    iget-object v3, v0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->d:Ljs/e;

    if-eqz v3, :cond_9

    invoke-virtual {v3}, Ljs/e;->c()I

    move-result v3

    goto :goto_5

    :cond_9
    move v3, v10

    :goto_5
    invoke-virtual {v2, v1, v8, v3, v9}, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;->v0(Ljava/lang/String;Lcom/transsion/shorttv/bean/Subject;IZ)V

    :cond_a
    iget-object v2, v0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->z:Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;

    if-eqz v2, :cond_1c

    iget-object v3, v0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->d:Ljs/e;

    if-eqz v3, :cond_b

    invoke-virtual {v3}, Ljs/e;->c()I

    move-result v10

    :cond_b
    invoke-virtual {v2, v1, v10}, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;->w0(Ljava/lang/String;I)V

    goto/16 :goto_b

    :cond_c
    sget-object v1, Llg/a;->a:Llg/a$a;

    iget-object v12, v0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->a:Ljava/lang/String;

    const/4 v15, 0x4

    const/16 v16, 0x0

    const-string v13, "onAudioTrackSelect, \u6709\u8be5\u4f5c\u54c1\u4fe1\u606f\uff0c\u76f4\u63a5\u64ad\u653e"

    const/4 v14, 0x0

    move-object v11, v1

    invoke-static/range {v11 .. v16}, Llg/a$a;->f(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    invoke-virtual {v2}, Lcom/transsion/shorttv/bean/ShortTVItem;->getVideo()Lcom/transsion/shorttv/bean/Media;

    move-result-object v2

    if-eqz v2, :cond_16

    invoke-virtual {v2}, Lcom/transsion/shorttv/bean/Media;->getVideo()Lcom/transsion/shorttv/bean/Video;

    move-result-object v2

    if-eqz v2, :cond_16

    invoke-virtual {v2}, Lcom/transsion/shorttv/bean/Video;->getUrl()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_16

    new-instance v3, Lao/e;

    iget-object v4, v0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->d:Ljs/e;

    if-eqz v4, :cond_d

    invoke-virtual {v4}, Ljs/e;->d()Lcom/transsion/shorttv/bean/ShortTVItem;

    move-result-object v4

    if-eqz v4, :cond_d

    invoke-virtual {v4}, Lcom/transsion/shorttv/bean/ShortTVItem;->getEp()I

    move-result v4

    move v14, v4

    goto :goto_6

    :cond_d
    move v14, v9

    :goto_6
    const/16 v17, 0x18

    const/16 v18, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    move-object v11, v3

    move-object v12, v2

    move-object v13, v2

    invoke-direct/range {v11 .. v18}, Lao/e;-><init>(Ljava/lang/String;Ljava/lang/String;ILcom/transsion/player/enum/PlayMimeType;Lcom/transsion/player/mediasession/MediaItem;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iget-object v4, v0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->j:Lcom/transsion/player/orplayer/g;

    instance-of v5, v4, Llo/f;

    if-eqz v5, :cond_e

    check-cast v4, Llo/f;

    goto :goto_7

    :cond_e
    move-object v4, v8

    :goto_7
    if-eqz v4, :cond_f

    invoke-interface {v4}, Llo/f;->a()Ljava/util/Map;

    move-result-object v4

    if-eqz v4, :cond_f

    invoke-virtual {v3}, Lao/e;->e()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    goto :goto_8

    :cond_f
    move v4, v9

    :goto_8
    iget-object v12, v0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->a:Ljava/lang/String;

    iget-object v5, v0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->d:Ljs/e;

    if-eqz v5, :cond_10

    invoke-virtual {v5}, Ljs/e;->d()Lcom/transsion/shorttv/bean/ShortTVItem;

    move-result-object v5

    if-eqz v5, :cond_10

    invoke-virtual {v5}, Lcom/transsion/shorttv/bean/ShortTVItem;->getEp()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    goto :goto_9

    :cond_10
    move-object v5, v8

    :goto_9
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onAudioTrackSelect, url:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ",EP:"

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ",inList:"

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    const/4 v15, 0x4

    const/16 v16, 0x0

    const/4 v14, 0x0

    move-object v11, v1

    invoke-static/range {v11 .. v16}, Llg/a$a;->f(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    if-nez v4, :cond_12

    iget-object v1, v0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->j:Lcom/transsion/player/orplayer/g;

    if-eqz v1, :cond_11

    invoke-interface {v1, v3}, Lcom/transsion/player/orplayer/g;->addDataSource(Lao/e;)Z

    :cond_11
    iget-object v1, v0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->j:Lcom/transsion/player/orplayer/g;

    if-eqz v1, :cond_12

    invoke-interface {v1}, Lcom/transsion/player/orplayer/g;->prepare()V

    :cond_12
    iget-object v1, v0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->z:Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;

    if-eqz v1, :cond_13

    invoke-virtual {v1, v10}, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;->e1(Z)V

    :cond_13
    iget-object v1, v0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->j:Lcom/transsion/player/orplayer/g;

    if-eqz v1, :cond_15

    invoke-virtual {v3}, Lao/e;->e()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_14

    const-string v2, ""

    :cond_14
    const-wide/16 v3, 0x0

    invoke-interface {v1, v2, v3, v4}, Lcom/transsion/player/orplayer/g;->seekTo(Ljava/lang/String;J)V

    :cond_15
    new-instance v1, Lcom/transsion/shorttv/ui/widget/p0;

    invoke-direct {v1, v0}, Lcom/transsion/shorttv/ui/widget/p0;-><init>(Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :cond_16
    invoke-virtual/range {p0 .. p0}, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->onAudioTrackChange()V

    goto :goto_b

    :cond_17
    iget-object v2, v0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->a:Ljava/lang/String;

    const/4 v5, 0x4

    const/4 v6, 0x0

    const-string v3, "onAudioTrackSelect, \u6ca1\u6709\u8be5\u4f5c\u54c1\u4fe1\u606f\uff0c\u9700\u8981\u91cd\u65b0\u8bf7\u6c42"

    const/4 v4, 0x0

    move-object v1, v7

    invoke-static/range {v1 .. v6}, Llg/a$a;->f(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    invoke-virtual/range {p1 .. p1}, Lcom/transsion/shorttv/bean/DubsInfo;->getSubjectId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1c

    iget-object v2, v0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->z:Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;

    if-eqz v2, :cond_18

    invoke-virtual {v2}, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;->X()Landroidx/lifecycle/b0;

    move-result-object v2

    if-eqz v2, :cond_18

    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v2, v3}, Landroidx/lifecycle/b0;->q(Ljava/lang/Object;)V

    :cond_18
    iget-object v2, v0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->z:Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;

    if-eqz v2, :cond_1a

    iget-object v3, v0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->d:Ljs/e;

    if-eqz v3, :cond_19

    invoke-virtual {v3}, Ljs/e;->c()I

    move-result v3

    goto :goto_a

    :cond_19
    move v3, v10

    :goto_a
    invoke-virtual {v2, v1, v8, v3, v9}, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;->v0(Ljava/lang/String;Lcom/transsion/shorttv/bean/Subject;IZ)V

    :cond_1a
    iget-object v2, v0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->z:Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;

    if-eqz v2, :cond_1c

    iget-object v3, v0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->d:Ljs/e;

    if-eqz v3, :cond_1b

    invoke-virtual {v3}, Ljs/e;->c()I

    move-result v10

    :cond_1b
    invoke-virtual {v2, v1, v10}, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;->w0(Ljava/lang/String;I)V

    :cond_1c
    :goto_b
    invoke-virtual/range {p1 .. p1}, Lcom/transsion/shorttv/bean/DubsInfo;->getSubjectId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1f

    iget-object v2, v0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->z:Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;

    if-eqz v2, :cond_1f

    iget-object v3, v0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->d:Ljs/e;

    if-eqz v3, :cond_1d

    invoke-virtual {v3}, Ljs/e;->c()I

    move-result v9

    :cond_1d
    iget-object v3, v0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->j:Lcom/transsion/player/orplayer/g;

    instance-of v4, v3, Llo/f;

    if-eqz v4, :cond_1e

    move-object v8, v3

    check-cast v8, Llo/f;

    :cond_1e
    invoke-virtual {v2, v1, v9, v8}, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;->U0(Ljava/lang/String;ILlo/f;)V

    :cond_1f
    return-void
.end method

.method private final setLoading(Z)V
    .locals 1

    iput-boolean p1, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->N:Z

    const-string v0, "null cannot be cast to non-null type com.transsion.shorttv.ui.fragment.ShortTvDetailListFragment"

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->f:Lcom/transsion/shorttv/ui/fragment/ShortTvDetailListFragment;

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/transsion/shorttv/ui/fragment/ShortTvDetailListFragment;->startLoading()V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->f:Lcom/transsion/shorttv/ui/fragment/ShortTvDetailListFragment;

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/transsion/shorttv/ui/fragment/ShortTvDetailListFragment;->hideLoading()V

    :goto_0
    return-void
.end method

.method public static synthetic t(Lcom/transsion/shorttv/ad/playeroverlayad/a;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0}, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->n0(Lcom/transsion/shorttv/ad/playeroverlayad/a;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method private static final t0(Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;)V
    .locals 1

    iget-object p0, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->z:Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;

    if-eqz p0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;->e1(Z)V

    :cond_0
    return-void
.end method

.method public static synthetic u(Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;Lkotlin/jvm/internal/Ref$IntRef;Lcom/transsion/shorttv/bean/ShortTVItem;Lcom/transsion/shorttv/utils/ShortTvVideoCtrBean;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->A0(Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;Lkotlin/jvm/internal/Ref$IntRef;Lcom/transsion/shorttv/bean/ShortTVItem;Lcom/transsion/shorttv/utils/ShortTvVideoCtrBean;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method private static final u0(Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;)V
    .locals 8

    iget-object v0, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->W:Lts/b;

    if-eqz v0, :cond_1

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lts/b;->a()Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;->getLan()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1}, Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;->getLan()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v1, Llg/a;->a:Llg/a$a;

    iget-object v2, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->a:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;->getResourceId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;->getLan()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1}, Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;->getStatus()I

    move-result p1

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "\u5185\u7f6e\u5b57\u5e55\u70b9\u51fb\u4e0b\u8f7d\u6210\u529f\uff0cname = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", videoResourceId = "

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", download subtitleName = "

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", lan = "

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\uff0c status:"

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "~"

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x4

    const/4 v6, 0x0

    const/4 v4, 0x0

    invoke-static/range {v1 .. v6}, Llg/a$a;->f(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    iget-object p1, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->W:Lts/b;

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    invoke-direct {p0, p1}, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->G0(Lts/b;)V

    :cond_1
    return-void
.end method

.method public static synthetic v(Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;Landroidx/fragment/app/FragmentActivity;Lcom/transsion/shorttv/bean/Subject;ILandroidx/appcompat/widget/AppCompatTextView;Ljs/e;ZLjava/lang/String;Ljava/lang/String;)Lkotlin/Unit;
    .locals 0

    invoke-static/range {p0 .. p8}, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->c1(Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;Landroidx/fragment/app/FragmentActivity;Lcom/transsion/shorttv/bean/Subject;ILandroidx/appcompat/widget/AppCompatTextView;Ljs/e;ZLjava/lang/String;Ljava/lang/String;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method private final v0()V
    .locals 3

    iget-boolean v0, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->S:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-boolean v0, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->N:Z

    const-string v1, "ivDownload"

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->c:Lms/k0;

    iget-object v0, v0, Lms/k0;->l:Landroidx/appcompat/widget/AppCompatImageView;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->X()V

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->P0()V

    :goto_0
    return-void

    :cond_2
    iget-object v0, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->j:Lcom/transsion/player/orplayer/g;

    if-eqz v0, :cond_7

    invoke-interface {v0}, Lcom/transsion/player/orplayer/g;->isPlaying()Z

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_7

    iget-object v0, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->c:Lms/k0;

    iget-object v0, v0, Lms/k0;->l:Landroidx/appcompat/widget/AppCompatImageView;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_6

    iput-boolean v2, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->o:Z

    iget-object v0, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->f:Lcom/transsion/shorttv/ui/fragment/ShortTvDetailListFragment;

    if-eqz v0, :cond_3

    invoke-virtual {v0, v2}, Lcom/transsion/shorttv/ui/fragment/ShortTvDetailListFragment;->m1(Z)V

    :cond_3
    iget-object v0, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->n:Lss/c;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lss/c;->b()V

    :cond_4
    iget-object v0, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->j:Lcom/transsion/player/orplayer/g;

    if-eqz v0, :cond_5

    invoke-interface {v0}, Lcom/transsion/player/orplayer/g;->pause()V

    :cond_5
    invoke-direct {p0}, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->P0()V

    goto :goto_2

    :cond_6
    invoke-direct {p0}, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->P0()V

    invoke-direct {p0}, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->L()V

    goto :goto_2

    :cond_7
    iget-object v0, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->c:Lms/k0;

    iget-object v0, v0, Lms/k0;->l:Landroidx/appcompat/widget/AppCompatImageView;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_8

    goto :goto_1

    :cond_8
    invoke-direct {p0}, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->P0()V

    :goto_1
    iget-object v0, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->n:Lss/c;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Lss/c;->c()V

    :cond_9
    invoke-direct {p0}, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->H0()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->o:Z

    iget-object v1, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->f:Lcom/transsion/shorttv/ui/fragment/ShortTvDetailListFragment;

    if-eqz v1, :cond_a

    invoke-virtual {v1, v0}, Lcom/transsion/shorttv/ui/fragment/ShortTvDetailListFragment;->m1(Z)V

    :cond_a
    :goto_2
    return-void
.end method

.method public static synthetic w(Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;Lcom/transsion/shorttv/bean/DubsInfo;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->y0(Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;Lcom/transsion/shorttv/bean/DubsInfo;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method private static final w0(Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;)V
    .locals 7

    iget-object v0, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->W:Lts/b;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lts/b;->e(Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;)V

    :cond_0
    sget-object v1, Llg/a;->a:Llg/a$a;

    iget-object v2, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->a:Ljava/lang/String;

    const-class p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;

    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1}, Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;->getResourceId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;->getLan()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1}, Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;->getStatus()I

    move-result p1

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " --> onFail() --> \u5185\u7f6e\u5b57\u5e55\u70b9\u51fb\u4e0b\u8f7d\u5931\u8d25TnT\uff0cname = "

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ", videoResourceId = "

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ", download subtitleName = "

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ", lan = "

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\uff0c status:"

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "~"

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x4

    const/4 v6, 0x0

    const/4 v4, 0x0

    invoke-static/range {v1 .. v6}, Llg/a$a;->f(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    return-void
.end method

.method public static synthetic watchAdToUnlock$shortTvLib_release$default(Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;ZILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->watchAdToUnlock$shortTvLib_release(Z)V

    return-void
.end method

.method public static synthetic x(Landroidx/appcompat/widget/AppCompatImageView;Landroid/graphics/drawable/BitmapDrawable;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->N0(Landroidx/appcompat/widget/AppCompatImageView;Landroid/graphics/drawable/BitmapDrawable;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method private final x0()V
    .locals 3

    sget-object v0, Lnh/m;->a:Lnh/m;

    invoke-virtual {v0}, Lnh/m;->e()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lfs/b;->a:Lfs/b$a;

    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    move-result-object v1

    sget v2, Lcom/transsion/shorttv/R$string;->short_tv_no_network_toast:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfs/b$a;->e(Ljava/lang/CharSequence;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->z:Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;->Z()Landroidx/lifecycle/LiveData;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->f()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/shorttv/bean/DubsInfoData;

    goto :goto_0

    :cond_1
    move-object v0, v1

    :goto_0
    iget-object v2, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->A:Lws/a;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Lws/a;->d()Landroidx/lifecycle/b0;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Landroidx/lifecycle/LiveData;->f()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    :cond_2
    if-eqz v0, :cond_6

    invoke-virtual {v0}, Lcom/transsion/shorttv/bean/DubsInfoData;->getDubs()Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    if-eqz v0, :cond_3

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_3
    check-cast v1, Ljava/util/Collection;

    if-eqz v1, :cond_6

    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_4

    goto :goto_1

    :cond_4
    new-instance v0, Lcom/transsion/shorttv/ui/dialog/ShortTvLanguageSelectDialog;

    invoke-direct {v0}, Lcom/transsion/shorttv/ui/dialog/ShortTvLanguageSelectDialog;-><init>()V

    new-instance v1, Lcom/transsion/shorttv/ui/widget/g0;

    invoke-direct {v1, p0}, Lcom/transsion/shorttv/ui/widget/g0;-><init>(Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;)V

    invoke-virtual {v0, v1}, Lcom/transsion/shorttv/ui/dialog/ShortTvLanguageSelectDialog;->C0(Lkotlin/jvm/functions/Function1;)V

    iget-object v1, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->f:Lcom/transsion/shorttv/ui/fragment/ShortTvDetailListFragment;

    if-eqz v1, :cond_5

    const-string v2, "ShortTvLanguageSelectDialog"

    invoke-virtual {v0, v1, v2}, Lcom/transsion/shorttv/base/dialog/BaseDialog;->j0(Landroidx/fragment/app/Fragment;Ljava/lang/String;)V

    :cond_5
    return-void

    :cond_6
    :goto_1
    sget-object v0, Lfs/b;->a:Lfs/b$a;

    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    move-result-object v1

    sget v2, Lcom/transsion/shorttv/R$string;->short_tv_no_error_content:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfs/b$a;->e(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public static synthetic y(Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;)V
    .locals 0

    invoke-static {p0}, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->R(Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;)V

    return-void
.end method

.method private static final y0(Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;Lcom/transsion/shorttv/bean/DubsInfo;)Lkotlin/Unit;
    .locals 2

    const-string v0, "item"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/transsion/shorttv/bean/DubsInfo;->isSubtitle()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/transsion/shorttv/bean/DubsInfo;->getSubInfo()Lts/b;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->c:Lms/k0;

    iget-object v0, v0, Lms/k0;->A:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {p1}, Lts/b;->a()Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;

    move-result-object v1

    invoke-virtual {v1}, Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;->getLanName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-direct {p0, p1}, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->G0(Lts/b;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->c:Lms/k0;

    iget-object v0, v0, Lms/k0;->A:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {p1}, Lcom/transsion/shorttv/bean/DubsInfo;->getLanName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-direct {p0, p1}, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->s0(Lcom/transsion/shorttv/bean/DubsInfo;)V

    :cond_1
    :goto_0
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method

.method public static synthetic z(Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;)V
    .locals 0

    invoke-static {p0}, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->X0(Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;)V

    return-void
.end method

.method private final z0()V
    .locals 12

    iget-object v0, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->z:Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;->a0()Landroidx/lifecycle/b0;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->f()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-eqz v0, :cond_2

    check-cast v0, Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lcom/transsion/shorttv/bean/ShortTVItem;

    iget-object v4, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->d:Ljs/e;

    if-eqz v4, :cond_0

    invoke-virtual {v3}, Lcom/transsion/shorttv/bean/ShortTVItem;->getEp()I

    move-result v3

    invoke-virtual {v4}, Ljs/e;->c()I

    move-result v4

    if-ne v3, v4, :cond_0

    goto :goto_0

    :cond_1
    move-object v2, v1

    :goto_0
    check-cast v2, Lcom/transsion/shorttv/bean/ShortTVItem;

    if-nez v2, :cond_4

    :cond_2
    iget-object v0, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->d:Ljs/e;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljs/e;->d()Lcom/transsion/shorttv/bean/ShortTVItem;

    move-result-object v2

    goto :goto_1

    :cond_3
    move-object v2, v1

    :cond_4
    :goto_1
    if-eqz v2, :cond_c

    invoke-virtual {v2}, Lcom/transsion/shorttv/bean/ShortTVItem;->getVideo()Lcom/transsion/shorttv/bean/Media;

    move-result-object v0

    if-eqz v0, :cond_c

    invoke-virtual {v0}, Lcom/transsion/shorttv/bean/Media;->getAddressList()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_5

    goto/16 :goto_7

    :cond_5
    sget-object v3, Lcom/transsion/shorttv/utils/h;->a:Lcom/transsion/shorttv/utils/h;

    invoke-virtual {v3}, Lcom/transsion/shorttv/utils/h;->d()Lcom/tencent/mmkv/MMKV;

    move-result-object v3

    const-string v4, "k_short_tv_resolution"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Lcom/tencent/mmkv/MMKV;->getInt(Ljava/lang/String;I)I

    move-result v3

    invoke-static {v0, v3}, Lcom/transsion/shorttv/utils/i;->d(Ljava/util/List;I)Lcom/transsion/shorttv/bean/Video;

    move-result-object v4

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    new-instance v7, Lkotlin/jvm/internal/Ref$IntRef;

    invoke-direct {v7}, Lkotlin/jvm/internal/Ref$IntRef;-><init>()V

    iput v3, v7, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    check-cast v0, Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/transsion/shorttv/bean/Video;

    new-instance v8, Lcom/transsion/shorttv/utils/ShortTvVideoCtrBean;

    invoke-virtual {v3}, Lcom/transsion/shorttv/bean/Video;->getResolution()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_6

    invoke-static {v9}, Lkotlin/text/StringsKt;->t(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v9

    if-eqz v9, :cond_6

    invoke-virtual {v9}, Ljava/lang/Float;->floatValue()F

    move-result v9

    goto :goto_3

    :cond_6
    const/4 v9, 0x0

    :goto_3
    invoke-virtual {v3}, Lcom/transsion/shorttv/bean/Video;->getResolution()Ljava/lang/String;

    move-result-object v10

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, "P"

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v8, v9, v10}, Lcom/transsion/shorttv/utils/ShortTvVideoCtrBean;-><init>(FLjava/lang/String;)V

    invoke-virtual {v3}, Lcom/transsion/shorttv/bean/Video;->getResolution()Ljava/lang/String;

    move-result-object v9

    if-eqz v4, :cond_7

    invoke-virtual {v4}, Lcom/transsion/shorttv/bean/Video;->getResolution()Ljava/lang/String;

    move-result-object v10

    goto :goto_4

    :cond_7
    move-object v10, v1

    :goto_4
    invoke-static {v9, v10}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_9

    invoke-virtual {v3}, Lcom/transsion/shorttv/bean/Video;->getResolution()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_8

    invoke-static {v9}, Lkotlin/text/StringsKt;->v(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v9

    if-eqz v9, :cond_8

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    goto :goto_5

    :cond_8
    move v9, v5

    :goto_5
    iput v9, v7, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    :cond_9
    invoke-virtual {v3}, Lcom/transsion/shorttv/bean/Video;->getResolution()Ljava/lang/String;

    move-result-object v3

    if-eqz v4, :cond_a

    invoke-virtual {v4}, Lcom/transsion/shorttv/bean/Video;->getResolution()Ljava/lang/String;

    move-result-object v9

    goto :goto_6

    :cond_a
    move-object v9, v1

    :goto_6
    invoke-static {v3, v9}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    invoke-virtual {v8, v3}, Lcom/transsion/shorttv/utils/ShortTvVideoCtrBean;->setSelect(Z)V

    invoke-interface {v6, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_b
    invoke-direct {p0}, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->P0()V

    iget-object v0, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->c:Lms/k0;

    iget-object v0, v0, Lms/k0;->D:Landroidx/appcompat/widget/AppCompatTextView;

    const-string v1, "tvResolution"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Lcom/transsion/shorttv/ui/widget/o0;

    invoke-direct {v1, p0, v7, v2}, Lcom/transsion/shorttv/ui/widget/o0;-><init>(Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;Lkotlin/jvm/internal/Ref$IntRef;Lcom/transsion/shorttv/bean/ShortTVItem;)V

    invoke-static {v0, v6, v1}, Lcom/transsion/shorttv/utils/l;->c(Landroid/view/View;Ljava/util/List;Lkotlin/jvm/functions/Function1;)V

    :cond_c
    :goto_7
    return-void
.end method


# virtual methods
.method public app2Background()V
    .locals 3

    iget-object v0, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->n:Lss/c;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->i0()Z

    move-result v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lss/c;->e(ZZ)V

    :cond_0
    return-void
.end method

.method public canNonSubscriberPlay(ZIILmo/d;)V
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lcom/transsion/player/orplayer/f$a;->a(Lcom/transsion/player/orplayer/f;ZIILmo/d;)V

    return-void
.end method

.method public final getCountdownController()Lcom/transsion/shorttv/ui/widget/a1;
    .locals 1

    iget-object v0, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->V:Lcom/transsion/shorttv/ui/widget/a1;

    return-object v0
.end method

.method public getPlayerContainer()Landroid/widget/FrameLayout;
    .locals 2

    iget-object v0, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->c:Lms/k0;

    iget-object v0, v0, Lms/k0;->e:Landroid/widget/FrameLayout;

    const-string v1, "flContainer"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public getProgress()J
    .locals 2

    iget-object v0, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->c:Lms/k0;

    iget-object v0, v0, Lms/k0;->u:Landroidx/appcompat/widget/AppCompatSeekBar;

    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getProgress()I

    move-result v0

    int-to-long v0, v0

    return-wide v0
.end method

.method public getViewModel(Landroidx/fragment/app/FragmentActivity;)Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;
    .locals 1

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Landroidx/lifecycle/v0;

    invoke-direct {v0, p1}, Landroidx/lifecycle/v0;-><init>(Landroidx/lifecycle/y0;)V

    const-class p1, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;

    invoke-virtual {v0, p1}, Landroidx/lifecycle/v0;->a(Ljava/lang/Class;)Landroidx/lifecycle/t0;

    move-result-object p1

    check-cast p1, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;

    return-object p1
.end method

.method public initPlayer()V
    .locals 0

    invoke-static {p0}, Lcom/transsion/player/orplayer/f$a;->b(Lcom/transsion/player/orplayer/f;)V

    return-void
.end method

.method public final isFirstPlayInSession()Z
    .locals 1

    iget-boolean v0, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->s:Z

    return v0
.end method

.method public onAliyunDecodeErrorChangeSoftwareDecoder(Lao/e;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/player/orplayer/f$a;->c(Lcom/transsion/player/orplayer/f;Lao/e;)V

    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 3

    invoke-super {p0}, Landroid/view/ViewGroup;->onAttachedToWindow()V

    iget-object v0, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->f:Lcom/transsion/shorttv/ui/fragment/ShortTvDetailListFragment;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Landroidx/lifecycle/u;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->z:Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;->d0()Landroidx/lifecycle/LiveData;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->I:Landroidx/lifecycle/c0;

    invoke-virtual {v1, v0, v2}, Landroidx/lifecycle/LiveData;->j(Landroidx/lifecycle/u;Landroidx/lifecycle/c0;)V

    :cond_0
    iget-object v1, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->J:Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView$d;

    iget-object v2, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->z:Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;->e0()Landroidx/lifecycle/LiveData;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Landroidx/lifecycle/LiveData;->f()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljs/f;

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v1, v2}, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView$d;->b(Ljs/f;)V

    iget-object v1, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->z:Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;->e0()Landroidx/lifecycle/LiveData;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v2, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->J:Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView$d;

    invoke-virtual {v1, v0, v2}, Landroidx/lifecycle/LiveData;->j(Landroidx/lifecycle/u;Landroidx/lifecycle/c0;)V

    :cond_2
    return-void
.end method

.method public onAudioTrackChange()V
    .locals 6

    sget-object v0, Llg/a;->a:Llg/a$a;

    iget-object v1, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->a:Ljava/lang/String;

    const/4 v4, 0x4

    const/4 v5, 0x0

    const-string v2, "onAudioTrackChange initResolution"

    const/4 v3, 0x0

    invoke-static/range {v0 .. v5}, Llg/a$a;->f(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    invoke-direct {p0}, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->g0()V

    return-void
.end method

.method public onBufferedPosition(JLao/e;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/transsion/player/orplayer/f$a;->d(Lcom/transsion/player/orplayer/f;JLao/e;)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 14

    sget-object v0, Lds/d;->a:Lds/d;

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    const-wide/16 v3, 0x1f4

    invoke-virtual {v0, v2, v3, v4}, Lds/d;->a(IJ)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    iget-boolean v0, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->S:Z

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->S0()V

    :cond_2
    sget-object v2, Llg/a;->a:Llg/a$a;

    iget-object v3, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->a:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onclick, "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x4

    const/4 v7, 0x0

    const/4 v5, 0x0

    invoke-static/range {v2 .. v7}, Llg/a$a;->f(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    const/4 v0, 0x0

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    goto :goto_1

    :cond_3
    move-object v2, v0

    :goto_1
    sget v3, Lcom/transsion/shorttv/R$id;->tv_episode:I

    if-nez v2, :cond_4

    goto :goto_2

    :cond_4
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-ne v4, v3, :cond_5

    invoke-virtual {p0}, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->showEpisodeListDialog()V

    goto/16 :goto_16

    :cond_5
    :goto_2
    sget v3, Lcom/transsion/shorttv/R$id;->tv_favorite:I

    if-nez v2, :cond_6

    goto :goto_7

    :cond_6
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-ne v4, v3, :cond_e

    iget-object p1, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->z:Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;

    if-eqz p1, :cond_d

    invoke-virtual {p1}, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;->H0()Landroidx/lifecycle/LiveData;

    move-result-object p1

    if-eqz p1, :cond_d

    invoke-virtual {p1}, Landroidx/lifecycle/LiveData;->f()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/transsion/shorttv/bean/Subject;

    if-nez p1, :cond_7

    goto :goto_6

    :cond_7
    sget-object v0, Lnh/m;->a:Lnh/m;

    invoke-virtual {v0}, Lnh/m;->e()Z

    move-result v0

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->d:Ljs/e;

    if-eqz v0, :cond_b

    sget-object v2, Lss/b;->a:Lss/b;

    invoke-virtual {p1}, Lcom/transsion/shorttv/bean/Subject;->getSubjectId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/transsion/shorttv/bean/Subject;->getOps()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lcom/transsion/shorttv/bean/Subject;->getShortTVFavInfo()Lcom/transsion/shorttv/bean/ShortTVFavInfo;

    move-result-object v0

    if-eqz v0, :cond_8

    invoke-virtual {v0}, Lcom/transsion/shorttv/bean/ShortTVFavInfo;->getHasFavorite()Z

    move-result v1

    :cond_8
    move v6, v1

    iget-object v0, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->f:Lcom/transsion/shorttv/ui/fragment/ShortTvDetailListFragment;

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Lcom/transsion/shorttv/ui/fragment/ShortTvDetailListFragment;->getPageName()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_9

    goto :goto_4

    :cond_9
    :goto_3
    move-object v7, v0

    goto :goto_5

    :cond_a
    :goto_4
    const-string v0, ""

    goto :goto_3

    :goto_5
    const/16 v9, 0x20

    const/4 v10, 0x0

    const-string v5, ""

    const/4 v8, 0x0

    invoke-static/range {v2 .. v10}, Lss/b;->g(Lss/b;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    :cond_b
    iget-object v0, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->z:Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;

    if-eqz v0, :cond_2b

    invoke-virtual {v0, p1}, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;->P(Lcom/transsion/shorttv/bean/Subject;)V

    goto/16 :goto_16

    :cond_c
    invoke-direct {p0}, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->O0()V

    goto/16 :goto_16

    :cond_d
    :goto_6
    return-void

    :cond_e
    :goto_7
    sget v3, Lcom/transsion/shorttv/R$id;->iv_play_status:I

    if-nez v2, :cond_f

    goto :goto_8

    :cond_f
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-ne v4, v3, :cond_10

    invoke-direct {p0}, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->v0()V

    goto/16 :goto_16

    :cond_10
    :goto_8
    sget v3, Lcom/transsion/shorttv/R$id;->iv_share:I

    if-nez v2, :cond_11

    goto :goto_9

    :cond_11
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-ne v4, v3, :cond_12

    invoke-direct {p0, p1}, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->B0(Landroid/view/View;)V

    goto/16 :goto_16

    :cond_12
    :goto_9
    sget v3, Lcom/transsion/shorttv/R$id;->iv_download:I

    if-nez v2, :cond_13

    goto :goto_a

    :cond_13
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-eq v4, v3, :cond_23

    :goto_a
    sget v3, Lcom/transsion/shorttv/R$id;->iv_short_cover:I

    if-nez v2, :cond_14

    goto :goto_b

    :cond_14
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-eq v4, v3, :cond_23

    :goto_b
    sget v3, Lcom/transsion/shorttv/R$id;->tv_name:I

    if-nez v2, :cond_15

    goto :goto_c

    :cond_15
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-ne v4, v3, :cond_16

    goto/16 :goto_12

    :cond_16
    :goto_c
    sget p1, Lcom/transsion/shorttv/R$id;->iv_back:I

    if-nez v2, :cond_17

    goto :goto_d

    :cond_17
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, p1, :cond_18

    iget-object p1, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->f:Lcom/transsion/shorttv/ui/fragment/ShortTvDetailListFragment;

    if-eqz p1, :cond_2b

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    if-eqz p1, :cond_2b

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    goto/16 :goto_16

    :cond_18
    :goto_d
    sget p1, Lcom/transsion/shorttv/R$id;->tv_language:I

    if-nez v2, :cond_19

    goto :goto_e

    :cond_19
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, p1, :cond_1b

    iget-object p1, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->c:Lms/k0;

    iget-object p1, p1, Lms/k0;->A:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {p1}, Landroid/view/View;->isSelected()Z

    move-result p1

    if-eqz p1, :cond_1a

    invoke-direct {p0}, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->x0()V

    goto/16 :goto_16

    :cond_1a
    sget-object p1, Lfs/b;->a:Lfs/b$a;

    sget v0, Lcom/transsion/shorttv/R$string;->short_tv_no_language_toast:I

    invoke-virtual {p1, v0}, Lfs/b$a;->d(I)V

    goto/16 :goto_16

    :cond_1b
    :goto_e
    sget p1, Lcom/transsion/shorttv/R$id;->tv_audio:I

    if-nez v2, :cond_1c

    goto :goto_f

    :cond_1c
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, p1, :cond_1d

    invoke-direct {p0}, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->q0()V

    goto/16 :goto_16

    :cond_1d
    :goto_f
    sget p1, Lcom/transsion/shorttv/R$id;->tv_subtitles:I

    if-nez v2, :cond_1e

    goto :goto_10

    :cond_1e
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, p1, :cond_1f

    invoke-direct {p0}, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->E0()V

    goto/16 :goto_16

    :cond_1f
    :goto_10
    sget p1, Lcom/transsion/shorttv/R$id;->tv_resolution:I

    if-nez v2, :cond_20

    goto :goto_11

    :cond_20
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, p1, :cond_21

    invoke-direct {p0}, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->z0()V

    goto/16 :goto_16

    :cond_21
    :goto_11
    sget p1, Lcom/transsion/shorttv/R$id;->tv_speed:I

    if-nez v2, :cond_22

    goto/16 :goto_16

    :cond_22
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, p1, :cond_2b

    invoke-direct {p0}, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->C0()V

    goto/16 :goto_16

    :cond_23
    :goto_12
    iget-object v2, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->t:Lcom/transsion/shorttv/ui/widget/c;

    if-eqz v2, :cond_24

    invoke-virtual {v2}, Lcom/transsion/shorttv/ui/widget/c;->f()V

    :cond_24
    iget-object v2, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->z:Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;

    if-eqz v2, :cond_2b

    invoke-virtual {v2}, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;->H0()Landroidx/lifecycle/LiveData;

    move-result-object v2

    if-eqz v2, :cond_2b

    invoke-virtual {v2}, Landroidx/lifecycle/LiveData;->f()Ljava/lang/Object;

    move-result-object v2

    move-object v9, v2

    check-cast v9, Lcom/transsion/shorttv/bean/Subject;

    if-eqz v9, :cond_2b

    iget-object v2, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->f:Lcom/transsion/shorttv/ui/fragment/ShortTvDetailListFragment;

    if-eqz v2, :cond_2b

    invoke-virtual {v2}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    if-nez v2, :cond_25

    goto :goto_16

    :cond_25
    iget-object v3, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->d:Ljs/e;

    if-eqz v3, :cond_26

    invoke-virtual {v3}, Ljs/e;->c()I

    move-result v3

    move v5, v3

    goto :goto_13

    :cond_26
    move v5, v1

    :goto_13
    sget-object v3, Lss/b;->a:Lss/b;

    invoke-virtual {v9}, Lcom/transsion/shorttv/bean/Subject;->getNeedPaid()I

    move-result v4

    const/4 v10, 0x1

    if-nez v4, :cond_27

    move v6, v10

    goto :goto_14

    :cond_27
    move v6, v1

    :goto_14
    invoke-direct {p0}, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->j0()Z

    move-result v4

    xor-int/lit8 v7, v4, 0x1

    sget-object v4, Lzr/b;->a:Lzr/b;

    invoke-virtual {v4, v9, v5}, Lzr/b;->b(Lcom/transsion/shorttv/bean/Subject;I)Ljava/lang/String;

    move-result-object v8

    move-object v4, v9

    invoke-virtual/range {v3 .. v8}, Lss/b;->c(Lcom/transsion/shorttv/bean/Subject;IZZLjava/lang/String;)V

    sget-object v3, Lns/a;->a:Lns/a;

    iget-object v4, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->f:Lcom/transsion/shorttv/ui/fragment/ShortTvDetailListFragment;

    if-eqz v4, :cond_28

    invoke-virtual {v4}, Lcom/transsion/shorttv/ui/fragment/ShortTvDetailListFragment;->getPageName()Ljava/lang/String;

    move-result-object v0

    :cond_28
    move-object v5, v0

    invoke-virtual {v9}, Lcom/transsion/shorttv/bean/Subject;->getOps()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v4, Lcom/transsion/shorttv/R$id;->iv_download:I

    if-ne v0, v4, :cond_29

    move v8, v10

    goto :goto_15

    :cond_29
    move v8, v1

    :goto_15
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    sget v0, Lcom/transsion/shorttv/R$id;->iv_download:I

    if-eq p1, v0, :cond_2a

    move v1, v10

    :cond_2a
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    const/16 v12, 0x40

    const/4 v13, 0x0

    const-string v7, "download_subject"

    const/4 v10, 0x0

    move-object v4, v2

    invoke-static/range {v3 .. v13}, Lns/a;->b(Lns/a;Landroidx/fragment/app/FragmentActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/transsion/shorttv/bean/Subject;Ljava/lang/String;Ljava/lang/Boolean;ILjava/lang/Object;)V

    nop

    :cond_2b
    :goto_16
    return-void
.end method

.method public onComplete(Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;)V
    .locals 1

    const-string v0, "stDownloadTable"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->a0:Z

    new-instance v0, Lcom/transsion/shorttv/ui/widget/w0;

    invoke-direct {v0, p0, p1}, Lcom/transsion/shorttv/ui/widget/w0;-><init>(Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;)V

    invoke-static {v0}, Lcom/blankj/utilcode/util/ThreadUtils;->k(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onCompletion(Lao/e;)V
    .locals 6

    sget-object v0, Llg/a;->a:Llg/a$a;

    iget-object v1, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->a:Ljava/lang/String;

    const-string p1, "onCompletion\uff0c play next"

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x4

    const/4 v5, 0x0

    const/4 v3, 0x0

    invoke-static/range {v0 .. v5}, Llg/a$a;->r(Llg/a$a;Ljava/lang/String;[Ljava/lang/String;ZILjava/lang/Object;)V

    iget-object p1, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->n:Lss/c;

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-static {p1, v1, v0, v1}, Lcom/transsion/player/orplayer/f$a;->f(Lcom/transsion/player/orplayer/f;Lao/e;ILjava/lang/Object;)V

    :cond_0
    const-wide/16 v0, 0x0

    invoke-direct {p0, v0, v1}, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->V0(J)V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 4

    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    iget-object v0, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->z:Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;->d0()Landroidx/lifecycle/LiveData;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->I:Landroidx/lifecycle/c0;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/LiveData;->o(Landroidx/lifecycle/c0;)V

    :cond_0
    iget-object v0, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->O:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->t:Lcom/transsion/shorttv/ui/widget/c;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/transsion/shorttv/ui/widget/c;->c()V

    :cond_1
    invoke-direct {p0}, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->S0()V

    iget-object v0, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->T:Lcom/transsion/shorttv/ad/common/STCommonVideoAdHelper;

    if-eqz v0, :cond_2

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-static {v0, v2, v3, v1}, Lcom/transsion/shorttv/ad/common/STCommonVideoAdHelper;->q(Lcom/transsion/shorttv/ad/common/STCommonVideoAdHelper;IILjava/lang/Object;)V

    :cond_2
    iput-object v1, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->T:Lcom/transsion/shorttv/ad/common/STCommonVideoAdHelper;

    invoke-direct {p0}, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->V()V

    iget-object v0, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->z:Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;->e0()Landroidx/lifecycle/LiveData;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v1, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->J:Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView$d;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/LiveData;->o(Landroidx/lifecycle/c0;)V

    :cond_3
    iget-object v0, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->z:Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;->N()V

    :cond_4
    sget-object v0, Lcom/transsion/shorttv/subtitle/manager/b;->a:Lcom/transsion/shorttv/subtitle/manager/b$a;

    invoke-virtual {v0}, Lcom/transsion/shorttv/subtitle/manager/b$a;->b()Lcom/transsion/shorttv/subtitle/manager/b;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/transsion/shorttv/subtitle/manager/b;->c(Lcom/transsion/subtitle_download/a;)V

    iget-object v0, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->D:Lcom/transsion/shorttv/subtitle/a;

    if-eqz v0, :cond_5

    invoke-interface {v0}, Lcom/transsion/shorttv/subtitle/a;->onDestroy()V

    :cond_5
    return-void
.end method

.method public onDownloading(ILcom/transsion/subtitle_download/db/SubtitleDownloadTable;)V
    .locals 0

    const-string p1, "stDownloadTable"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public onFail(Ljava/lang/Exception;Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;)V
    .locals 1

    const-string v0, "e"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "dbBean"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->a0:Z

    new-instance p1, Lcom/transsion/shorttv/ui/widget/x0;

    invoke-direct {p1, p0, p2}, Lcom/transsion/shorttv/ui/widget/x0;-><init>(Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;)V

    invoke-static {p1}, Lcom/blankj/utilcode/util/ThreadUtils;->k(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onFocusChange(Z)V
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/player/orplayer/f$a;->g(Lcom/transsion/player/orplayer/f;Z)V

    return-void
.end method

.method public onGetDubsInfo()V
    .locals 0

    invoke-direct {p0}, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->b0()V

    return-void
.end method

.method public onIsPlayingChanged(Z)V
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/player/orplayer/f$a;->h(Lcom/transsion/player/orplayer/f;Z)V

    return-void
.end method

.method public onLoadingBegin(Lao/e;)V
    .locals 2

    iget-object p1, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->n:Lss/c;

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    const/4 v1, 0x0

    invoke-static {p1, v1, v0, v1}, Lcom/transsion/player/orplayer/f$a;->j(Lcom/transsion/player/orplayer/f;Lao/e;ILjava/lang/Object;)V

    :cond_0
    invoke-direct {p0, v0}, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->setLoading(Z)V

    iget-object p1, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->t:Lcom/transsion/shorttv/ui/widget/c;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/transsion/shorttv/ui/widget/c;->i()V

    :cond_1
    return-void
.end method

.method public onLoadingEnd(Lao/e;)V
    .locals 2

    iget-object p1, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->n:Lss/c;

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-static {p1, v1, v0, v1}, Lcom/transsion/player/orplayer/f$a;->l(Lcom/transsion/player/orplayer/f;Lao/e;ILjava/lang/Object;)V

    :cond_0
    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->setLoading(Z)V

    iget-object p1, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->M:Ljava/lang/Runnable;

    invoke-virtual {p0, p1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget-object p1, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->t:Lcom/transsion/shorttv/ui/widget/c;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/transsion/shorttv/ui/widget/c;->h()V

    :cond_1
    return-void
.end method

.method public onLoadingProgress(IFLao/e;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/transsion/player/orplayer/f$a;->m(Lcom/transsion/player/orplayer/f;IFLao/e;)V

    return-void
.end method

.method public onLoopingStart()V
    .locals 0

    return-void
.end method

.method public final onMediaItemTransition()V
    .locals 6

    sget-object v0, Llg/a;->a:Llg/a$a;

    iget-object v1, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->c:Lms/k0;

    iget-object v2, v2, Lms/k0;->s:Landroid/widget/ProgressBar;

    invoke-virtual {v2}, Landroid/widget/ProgressBar;->getMax()I

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onMediaItemTransition: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "  : "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x4

    const/4 v5, 0x0

    const/4 v3, 0x0

    invoke-static/range {v0 .. v5}, Llg/a$a;->f(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    iget-object v0, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->n:Lss/c;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {v0, v2, v1, v2}, Lcom/transsion/player/orplayer/f$a;->f(Lcom/transsion/player/orplayer/f;Lao/e;ILjava/lang/Object;)V

    :cond_0
    invoke-virtual {p0}, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->reset()V

    return-void
.end method

.method public onMediaItemTransition(Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/player/orplayer/f$a;->p(Lcom/transsion/player/orplayer/f;Ljava/lang/String;)V

    return-void
.end method

.method public final onNetConnect()V
    .locals 6

    sget-object v0, Llg/a;->a:Llg/a$a;

    const/4 v4, 0x4

    const/4 v5, 0x0

    const-string v1, "ORSubtitle_v"

    const-string v2, "onNetConnect, \u7f51\u7edc\u6062\u590d\uff0c\u68c0\u6d4b\u5b57\u5e55"

    const/4 v3, 0x0

    invoke-static/range {v0 .. v5}, Llg/a$a;->f(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    iget-object v0, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->D:Lcom/transsion/shorttv/subtitle/a;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/transsion/shorttv/subtitle/a;->e()V

    :cond_0
    return-void
.end method

.method public onPageRelease(I)V
    .locals 3

    iget-object p1, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->d:Ljs/e;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljs/e;->c()I

    move-result p1

    iget-object v0, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->z:Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->getProgress()J

    move-result-wide v1

    invoke-virtual {v0, p1, v1, v2}, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;->K(IJ)V

    :cond_0
    invoke-direct {p0}, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->S0()V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->V:Lcom/transsion/shorttv/ui/widget/a1;

    iget-object v0, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->T:Lcom/transsion/shorttv/ad/common/STCommonVideoAdHelper;

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {v0, v1, v2, p1}, Lcom/transsion/shorttv/ad/common/STCommonVideoAdHelper;->q(Lcom/transsion/shorttv/ad/common/STCommonVideoAdHelper;IILjava/lang/Object;)V

    :cond_1
    iput-object p1, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->T:Lcom/transsion/shorttv/ad/common/STCommonVideoAdHelper;

    invoke-virtual {p0}, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->onPlayerReset()V

    iget-object p1, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->z:Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;->G0()Landroidx/lifecycle/LiveData;

    move-result-object p1

    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->H:Landroidx/lifecycle/c0;

    invoke-virtual {p1, v0}, Landroidx/lifecycle/LiveData;->o(Landroidx/lifecycle/c0;)V

    :cond_2
    return-void
.end method

.method public onPageSelected(Lcom/transsion/player/orplayer/g;Lcom/transsion/player/ui/ORPlayerView;Ljs/e;)V
    .locals 6

    iget-object v0, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->f:Lcom/transsion/shorttv/ui/fragment/ShortTvDetailListFragment;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v1

    if-nez v1, :cond_1

    return-void

    :cond_1
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v1

    if-nez v1, :cond_2

    return-void

    :cond_2
    iget-object v1, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->t:Lcom/transsion/shorttv/ui/widget/c;

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Lcom/transsion/shorttv/ui/widget/c;->d()V

    :cond_3
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Landroidx/lifecycle/u;

    move-result-object v0

    const-string v1, "getViewLifecycleOwner(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->z:Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;->G0()Landroidx/lifecycle/LiveData;

    move-result-object v1

    if-eqz v1, :cond_4

    iget-object v2, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->H:Landroidx/lifecycle/c0;

    invoke-virtual {v1, v0, v2}, Landroidx/lifecycle/LiveData;->j(Landroidx/lifecycle/u;Landroidx/lifecycle/c0;)V

    :cond_4
    iput-object p1, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->j:Lcom/transsion/player/orplayer/g;

    iput-object p2, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->k:Lcom/transsion/player/ui/ORPlayerView;

    iget-object v0, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->n:Lss/c;

    if-eqz v0, :cond_5

    invoke-virtual {v0, p1}, Lss/c;->p(Lcom/transsion/player/orplayer/g;)V

    :cond_5
    iget-object v0, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->n:Lss/c;

    if-eqz v0, :cond_6

    if-eqz p1, :cond_6

    invoke-interface {p1, v0}, Lcom/transsion/player/orplayer/g;->addPlayerListener(Lcom/transsion/player/orplayer/f;)V

    :cond_6
    if-eqz p3, :cond_7

    iget-object v0, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->z:Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;

    if-eqz v0, :cond_7

    invoke-virtual {p3}, Ljs/e;->c()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;->d1(I)V

    :cond_7
    invoke-virtual {p0, p1, p2, p3}, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->updateShortTvInfo(Lcom/transsion/player/orplayer/g;Lcom/transsion/player/ui/ORPlayerView;Ljs/e;)V

    invoke-direct {p0}, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->b0()V

    invoke-direct {p0}, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->g0()V

    invoke-direct {p0}, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->h0()V

    invoke-direct {p0}, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->P0()V

    invoke-direct {p0}, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->L()V

    if-eqz p3, :cond_8

    invoke-direct {p0, p3}, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->o0(Ljs/e;)V

    :cond_8
    iget-object p1, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->z:Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;

    if-eqz p1, :cond_9

    invoke-virtual {p1}, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;->H0()Landroidx/lifecycle/LiveData;

    move-result-object p1

    if-eqz p1, :cond_9

    invoke-virtual {p1}, Landroidx/lifecycle/LiveData;->f()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/transsion/shorttv/bean/Subject;

    :goto_0
    move-object v1, p1

    goto :goto_1

    :cond_9
    const/4 p1, 0x0

    goto :goto_0

    :goto_1
    iget-object p1, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->d:Ljs/e;

    const/4 p2, 0x0

    if-eqz p1, :cond_a

    invoke-virtual {p1}, Ljs/e;->c()I

    move-result p1

    move v2, p1

    goto :goto_2

    :cond_a
    move v2, p2

    :goto_2
    sget-object p1, Lzr/b;->a:Lzr/b;

    invoke-virtual {p1, v1, v2}, Lzr/b;->b(Lcom/transsion/shorttv/bean/Subject;I)Ljava/lang/String;

    move-result-object v5

    sget-object v0, Lss/b;->a:Lss/b;

    const/4 p1, 0x1

    if-eqz v1, :cond_b

    invoke-virtual {v1}, Lcom/transsion/shorttv/bean/Subject;->getNeedPaid()I

    move-result p3

    if-nez p3, :cond_b

    move v3, p1

    goto :goto_3

    :cond_b
    move v3, p2

    :goto_3
    invoke-direct {p0}, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->j0()Z

    move-result p2

    xor-int/lit8 v4, p2, 0x1

    invoke-virtual/range {v0 .. v5}, Lss/b;->k(Lcom/transsion/shorttv/bean/Subject;IZZLjava/lang/String;)V

    return-void
.end method

.method public onPlayError(Lcom/transsion/player/orplayer/PlayError;Lao/e;)V
    .locals 5

    const-string v0, "errorInfo"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->n:Lss/c;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 v2, 0x2

    invoke-static {v0, p1, v1, v2, v1}, Lcom/transsion/player/orplayer/f$a;->r(Lcom/transsion/player/orplayer/f;Lcom/transsion/player/orplayer/PlayError;Lao/e;ILjava/lang/Object;)V

    :cond_0
    sget-object v0, Llg/a;->a:Llg/a$a;

    iget-object v2, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->a:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/transsion/player/orplayer/PlayError;->getErrorCode()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p1}, Lcom/transsion/player/orplayer/PlayError;->getErrorMessage()Ljava/lang/String;

    move-result-object v4

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Lao/e;->k()Ljava/lang/String;

    move-result-object v1

    :cond_1
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " --> IPlayerListener --> onPlayError()  errorCode:"

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " errorMessage:"

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " url:"

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " --> \u77ed\u64ad\u653e\u5931\u8d25\u4e86"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const/4 v1, 0x1

    const-string v2, "i_media"

    invoke-virtual {v0, v2, p2, v1}, Llg/a$a;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    const/4 p2, 0x0

    invoke-direct {p0, p2}, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->setLoading(Z)V

    iget-object p2, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->t:Lcom/transsion/shorttv/ui/widget/c;

    if-eqz p2, :cond_2

    invoke-virtual {p2}, Lcom/transsion/shorttv/ui/widget/c;->h()V

    :cond_2
    invoke-virtual {p1}, Lcom/transsion/player/orplayer/PlayError;->getErrorCode()Ljava/lang/Integer;

    move-result-object p2

    if-nez p2, :cond_3

    goto :goto_0

    :cond_3
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    const/16 v0, 0x7d1

    if-eq p2, v0, :cond_5

    :goto_0
    invoke-virtual {p1}, Lcom/transsion/player/orplayer/PlayError;->getErrorCode()Ljava/lang/Integer;

    move-result-object p1

    if-nez p1, :cond_4

    goto :goto_1

    :cond_4
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/16 p2, 0x7d2

    if-ne p1, p2, :cond_6

    :cond_5
    invoke-direct {p0}, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->O0()V

    :cond_6
    :goto_1
    return-void
.end method

.method public onPlayErrorChangePayer(Lcom/transsion/player/orplayer/global/TnPlayerType;Lao/e;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/transsion/player/orplayer/f$a;->s(Lcom/transsion/player/orplayer/f;Lcom/transsion/player/orplayer/global/TnPlayerType;Lao/e;)V

    return-void
.end method

.method public onPlayerRelease(Lao/e;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/player/orplayer/f$a;->t(Lcom/transsion/player/orplayer/f;Lao/e;)V

    return-void
.end method

.method public onPlayerReset()V
    .locals 8

    sget-object v6, Llg/a;->a:Llg/a$a;

    iget-object v1, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->a:Ljava/lang/String;

    iget-object v0, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->d:Ljs/e;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "player- onPlayerReset data: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x4

    const/4 v5, 0x0

    const/4 v3, 0x0

    move-object v0, v6

    invoke-static/range {v0 .. v5}, Llg/a$a;->f(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    iget-object v0, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->t:Lcom/transsion/shorttv/ui/widget/c;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/transsion/shorttv/ui/widget/c;->d()V

    :cond_0
    invoke-direct {p0}, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->V()V

    iget-object v0, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->D:Lcom/transsion/shorttv/subtitle/a;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/transsion/shorttv/subtitle/a;->onDestroy()V

    :cond_1
    const/4 v7, 0x0

    iput-object v7, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->D:Lcom/transsion/shorttv/subtitle/a;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/View;->setKeepScreenOn(Z)V

    iput-boolean v0, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->o:Z

    iget-object v1, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->f:Lcom/transsion/shorttv/ui/fragment/ShortTvDetailListFragment;

    if-eqz v1, :cond_2

    invoke-virtual {v1, v0}, Lcom/transsion/shorttv/ui/fragment/ShortTvDetailListFragment;->m1(Z)V

    :cond_2
    iput-boolean v0, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->K:Z

    iput-boolean v0, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->L:Z

    invoke-direct {p0}, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->i0()Z

    move-result v1

    iget-object v2, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->n:Lss/c;

    if-eqz v2, :cond_3

    invoke-virtual {v2, v1, v0}, Lss/c;->e(ZZ)V

    :cond_3
    if-eqz v1, :cond_5

    iget-object v0, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->z:Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;

    if-eqz v0, :cond_5

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;->H0()Landroidx/lifecycle/LiveData;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Landroidx/lifecycle/LiveData;->f()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/shorttv/bean/Subject;

    goto :goto_0

    :cond_4
    move-object v1, v7

    :goto_0
    iget-object v2, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->d:Ljs/e;

    iget-object v3, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->c:Lms/k0;

    iget-object v3, v3, Lms/k0;->u:Landroidx/appcompat/widget/AppCompatSeekBar;

    invoke-virtual {v3}, Landroid/widget/ProgressBar;->getProgress()I

    move-result v3

    int-to-long v3, v3

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;->s1(Lcom/transsion/shorttv/bean/Subject;Ljs/e;J)V

    :cond_5
    iget-object v0, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->c:Lms/k0;

    iget-object v0, v0, Lms/k0;->k:Landroidx/appcompat/widget/AppCompatImageView;

    const-string v1, "ivCover"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Lyr/b;->e(Landroid/view/View;)V

    iget-object v1, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->a:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPlayerReset   visible  "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x4

    const/4 v5, 0x0

    const/4 v3, 0x0

    move-object v0, v6

    invoke-static/range {v0 .. v5}, Llg/a$a;->f(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    iget-object v0, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->c:Lms/k0;

    iget-object v0, v0, Lms/k0;->m:Landroidx/appcompat/widget/AppCompatImageView;

    const-string v1, "ivPlayStatus"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Lyr/b;->b(Landroid/view/View;)V

    iget-object v0, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->j:Lcom/transsion/player/orplayer/g;

    if-eqz v0, :cond_6

    invoke-interface {v0, p0}, Lcom/transsion/player/orplayer/g;->removePlayerListener(Lcom/transsion/player/orplayer/f;)V

    :cond_6
    iget-object v0, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->n:Lss/c;

    if-eqz v0, :cond_7

    iget-object v1, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->j:Lcom/transsion/player/orplayer/g;

    if-eqz v1, :cond_7

    invoke-interface {v1, v0}, Lcom/transsion/player/orplayer/g;->removePlayerListener(Lcom/transsion/player/orplayer/f;)V

    :cond_7
    iput-object v7, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->j:Lcom/transsion/player/orplayer/g;

    iput-object v7, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->k:Lcom/transsion/player/ui/ORPlayerView;

    iput-object v7, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->l:Lcom/transsion/shorttv/base/pager/PagerLayoutManager;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->r:J

    invoke-direct {p0, v0, v1}, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->V0(J)V

    const-wide/16 v0, 0x64

    invoke-direct {p0, v0, v1}, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->W0(J)V

    return-void
.end method

.method public onPrepare(Lao/e;)V
    .locals 11

    iget-boolean p1, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->L:Z

    if-nez p1, :cond_5

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->L:Z

    iget-object v0, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->j:Lcom/transsion/player/orplayer/g;

    const-wide/16 v1, 0x0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/transsion/player/orplayer/g;->getDuration()J

    move-result-wide v3

    goto :goto_0

    :cond_0
    move-wide v3, v1

    :goto_0
    invoke-direct {p0, v3, v4}, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->W0(J)V

    const/16 v0, 0x3e8

    int-to-long v5, v0

    div-long/2addr v3, v5

    const-wide/16 v5, 0x1e

    cmp-long v0, v3, v5

    const-string v3, "vProgressGesture"

    if-ltz v0, :cond_1

    iget-object v0, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->c:Lms/k0;

    iget-object v0, v0, Lms/k0;->J:Lcom/transsion/shorttv/ui/widget/ShortTvVideoProgressDragGestureView;

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Lyr/b;->e(Landroid/view/View;)V

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->c:Lms/k0;

    iget-object v0, v0, Lms/k0;->J:Lcom/transsion/shorttv/ui/widget/ShortTvVideoProgressDragGestureView;

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Lyr/b;->b(Landroid/view/View;)V

    :goto_1
    iget-object v0, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->z:Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;->f0()Landroidx/lifecycle/LiveData;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->f()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/shorttv/bean/ShortTvInnerPlayBean;

    if-eqz v0, :cond_3

    iget-object v3, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->d:Ljs/e;

    if-eqz v3, :cond_3

    invoke-virtual {v3}, Ljs/e;->d()Lcom/transsion/shorttv/bean/ShortTVItem;

    move-result-object v3

    if-eqz v3, :cond_3

    invoke-virtual {v0}, Lcom/transsion/shorttv/bean/ShortTvInnerPlayBean;->getEp()I

    move-result v4

    invoke-virtual {v3}, Lcom/transsion/shorttv/bean/ShortTVItem;->getEp()I

    move-result v3

    if-ne v4, v3, :cond_3

    invoke-virtual {v0}, Lcom/transsion/shorttv/bean/ShortTvInnerPlayBean;->getProgress()J

    move-result-wide v3

    sget-object v5, Llg/a;->a:Llg/a$a;

    iget-object v6, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->a:Ljava/lang/String;

    iget-object v0, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->c:Lms/k0;

    iget-object v0, v0, Lms/k0;->u:Landroidx/appcompat/widget/AppCompatSeekBar;

    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getProgress()I

    move-result v0

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "player- onPrepare, duration = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", progress = "

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, "  this = "

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v9, 0x4

    const/4 v10, 0x0

    const/4 v8, 0x0

    invoke-static/range {v5 .. v10}, Llg/a$a;->f(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    cmp-long v0, v3, v1

    if-lez v0, :cond_2

    iput-wide v3, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->r:J

    iget-object v0, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->j:Lcom/transsion/player/orplayer/g;

    if-eqz v0, :cond_2

    invoke-interface {v0, v3, v4}, Lcom/transsion/player/orplayer/g;->seekTo(J)V

    :cond_2
    iget-object v0, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->z:Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;->O()V

    :cond_3
    iget-boolean v0, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->o:Z

    if-nez v0, :cond_4

    iget-boolean v0, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->q:Z

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->f:Lcom/transsion/shorttv/ui/fragment/ShortTvDetailListFragment;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->isVisible()Z

    move-result v0

    if-ne v0, p1, :cond_4

    sget-object v1, Llg/a;->a:Llg/a$a;

    iget-object v2, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->a:Ljava/lang/String;

    const/4 v5, 0x4

    const/4 v6, 0x0

    const-string v3, "player- onPrepare\uff0c play~"

    const/4 v4, 0x0

    invoke-static/range {v1 .. v6}, Llg/a$a;->f(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    :cond_4
    invoke-virtual {p0, p1}, Landroid/view/View;->setKeepScreenOn(Z)V

    :cond_5
    return-void
.end method

.method public onProgress(JLao/e;)V
    .locals 17

    move-object/from16 v0, p0

    move-wide/from16 v7, p1

    iget-boolean v1, v0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->p:Z

    if-eqz v1, :cond_0

    return-void

    :cond_0
    iget-object v1, v0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->c:Lms/k0;

    iget-object v1, v1, Lms/k0;->u:Landroidx/appcompat/widget/AppCompatSeekBar;

    invoke-virtual {v1}, Landroid/widget/ProgressBar;->getMax()I

    move-result v1

    int-to-long v1, v1

    const-wide/16 v9, 0x0

    cmp-long v3, v1, v9

    if-lez v3, :cond_1

    const-wide/16 v3, 0x64

    cmp-long v3, v1, v3

    if-eqz v3, :cond_1

    iget-object v3, v0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->j:Lcom/transsion/player/orplayer/g;

    if-eqz v3, :cond_1

    invoke-interface {v3}, Lcom/transsion/player/orplayer/g;->getDuration()J

    move-result-wide v3

    cmp-long v1, v1, v3

    if-nez v1, :cond_1

    goto :goto_1

    :cond_1
    iget-object v1, v0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->j:Lcom/transsion/player/orplayer/g;

    if-eqz v1, :cond_2

    invoke-interface {v1}, Lcom/transsion/player/orplayer/g;->getDuration()J

    move-result-wide v1

    goto :goto_0

    :cond_2
    move-wide v1, v9

    :goto_0
    cmp-long v3, v1, v9

    if-gtz v3, :cond_3

    sget-object v11, Llg/a;->a:Llg/a$a;

    iget-object v12, v0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->a:Ljava/lang/String;

    const/4 v15, 0x4

    const/16 v16, 0x0

    const-string v13, "onProgress- duration <= 0, return"

    const/4 v14, 0x0

    invoke-static/range {v11 .. v16}, Llg/a$a;->f(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    return-void

    :cond_3
    invoke-direct {v0, v1, v2}, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->W0(J)V

    :goto_1
    iget-object v1, v0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->n:Lss/c;

    if-eqz v1, :cond_4

    const/4 v5, 0x2

    const/4 v6, 0x0

    const/4 v4, 0x0

    move-wide/from16 v2, p1

    invoke-static/range {v1 .. v6}, Lcom/transsion/player/orplayer/f$a;->z(Lcom/transsion/player/orplayer/f;JLao/e;ILjava/lang/Object;)V

    :cond_4
    iget-object v1, v0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->D:Lcom/transsion/shorttv/subtitle/a;

    if-eqz v1, :cond_5

    invoke-interface {v1, v7, v8}, Lcom/transsion/shorttv/subtitle/a;->d(J)V

    :cond_5
    invoke-direct/range {p0 .. p2}, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->V0(J)V

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->setLoading(Z)V

    cmp-long v1, v7, v9

    if-lez v1, :cond_6

    iget-object v1, v0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->c:Lms/k0;

    iget-object v1, v1, Lms/k0;->k:Landroidx/appcompat/widget/AppCompatImageView;

    const-string v2, "ivCover"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_6

    iget-object v1, v0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->j:Lcom/transsion/player/orplayer/g;

    if-eqz v1, :cond_6

    invoke-interface {v1}, Lcom/transsion/player/orplayer/g;->isPlaying()Z

    move-result v1

    const/4 v3, 0x1

    if-ne v1, v3, :cond_6

    sget-object v11, Llg/a;->a:Llg/a$a;

    iget-object v12, v0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->a:Ljava/lang/String;

    const/4 v15, 0x4

    const/16 v16, 0x0

    const-string v13, "onProgress-progress>= cover gone"

    const/4 v14, 0x0

    invoke-static/range {v11 .. v16}, Llg/a$a;->f(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    iget-object v1, v0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->c:Lms/k0;

    iget-object v1, v1, Lms/k0;->k:Landroidx/appcompat/widget/AppCompatImageView;

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1}, Lyr/b;->b(Landroid/view/View;)V

    :cond_6
    iget-object v1, v0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->z:Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;

    if-eqz v1, :cond_7

    invoke-virtual {v1}, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;->H0()Landroidx/lifecycle/LiveData;

    move-result-object v1

    if-eqz v1, :cond_7

    invoke-virtual {v1}, Landroidx/lifecycle/LiveData;->f()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/shorttv/bean/Subject;

    goto :goto_2

    :cond_7
    const/4 v1, 0x0

    :goto_2
    if-eqz v1, :cond_a

    invoke-virtual {v1}, Lcom/transsion/shorttv/bean/Subject;->getMiniTvType()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_a

    invoke-direct/range {p0 .. p0}, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->j0()Z

    move-result v2

    if-eqz v2, :cond_a

    invoke-virtual {v1}, Lcom/transsion/shorttv/bean/Subject;->getUnlockFrom()I

    move-result v1

    int-to-long v1, v1

    const-wide/16 v3, 0x3e8

    mul-long/2addr v1, v3

    const-wide/16 v3, 0x1

    cmp-long v3, v3, v1

    if-gtz v3, :cond_9

    cmp-long v3, v1, v7

    if-gtz v3, :cond_9

    iget-object v1, v0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->j:Lcom/transsion/player/orplayer/g;

    if-eqz v1, :cond_8

    invoke-interface {v1}, Lcom/transsion/player/orplayer/g;->pause()V

    :cond_8
    invoke-direct/range {p0 .. p0}, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->V()V

    iget-object v1, v0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->d:Ljs/e;

    invoke-direct {v0, v1}, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->K0(Ljs/e;)V

    goto :goto_3

    :cond_9
    cmp-long v3, v1, v9

    if-lez v3, :cond_a

    sub-long/2addr v1, v7

    invoke-direct {v0, v1, v2}, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->U0(J)V

    :cond_a
    :goto_3
    return-void
.end method

.method public onRenderFirstFrame()V
    .locals 9

    sget-object v0, Llg/a;->a:Llg/a$a;

    iget-object v1, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->c:Lms/k0;

    iget-object v2, v2, Lms/k0;->k:Landroidx/appcompat/widget/AppCompatImageView;

    const-string v6, "ivCover"

    invoke-static {v2, v6}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v2

    const/4 v7, 0x0

    const/4 v8, 0x1

    if-nez v2, :cond_0

    move v2, v8

    goto :goto_0

    :cond_0
    move v2, v7

    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "player-   viewBinding.ivCover.isVisible:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " onRenderFirstFrame"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x4

    const/4 v5, 0x0

    const/4 v3, 0x0

    invoke-static/range {v0 .. v5}, Llg/a$a;->f(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    iget-boolean v0, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->K:Z

    if-nez v0, :cond_1

    iput-boolean v8, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->K:Z

    iget-object v0, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->n:Lss/c;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lss/c;->onRenderFirstFrame()V

    :cond_1
    invoke-direct {p0, v7}, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->setLoading(Z)V

    iget-object v0, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->t:Lcom/transsion/shorttv/ui/widget/c;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/transsion/shorttv/ui/widget/c;->h()V

    :cond_2
    iget-object v0, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->c:Lms/k0;

    iget-object v0, v0, Lms/k0;->k:Landroidx/appcompat/widget/AppCompatImageView;

    invoke-static {v0, v6}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Lyr/b;->b(Landroid/view/View;)V

    return-void
.end method

.method public onSaveDownload(Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/subtitle_download/a$a;->a(Lcom/transsion/subtitle_download/a;Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;)V

    return-void
.end method

.method public onSetDataSource()V
    .locals 0

    return-void
.end method

.method public onStateChanged(Landroidx/lifecycle/u;Landroidx/lifecycle/Lifecycle$Event;)V
    .locals 12

    const-string v0, "source"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "event"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p1, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView$a;->a:[I

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    aget p1, p1, p2

    const/4 p2, 0x1

    if-eq p1, p2, :cond_5

    const/4 v0, 0x2

    if-eq p1, v0, :cond_4

    const/4 p2, 0x5

    if-eq p1, p2, :cond_0

    goto/16 :goto_0

    :cond_0
    iget-object p1, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->f:Lcom/transsion/shorttv/ui/fragment/ShortTvDetailListFragment;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p1, p0}, Landroidx/lifecycle/Lifecycle;->d(Landroidx/lifecycle/t;)V

    :cond_1
    iget-object p1, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->n:Lss/c;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lss/c;->h()V

    :cond_2
    iget-object p1, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->j:Lcom/transsion/player/orplayer/g;

    if-eqz p1, :cond_3

    invoke-interface {p1, p0}, Lcom/transsion/player/orplayer/g;->removePlayerListener(Lcom/transsion/player/orplayer/f;)V

    :cond_3
    iget-object p1, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->n:Lss/c;

    if-eqz p1, :cond_7

    iget-object p2, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->j:Lcom/transsion/player/orplayer/g;

    if-eqz p2, :cond_7

    invoke-interface {p2, p1}, Lcom/transsion/player/orplayer/g;->removePlayerListener(Lcom/transsion/player/orplayer/f;)V

    goto :goto_0

    :cond_4
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->q:Z

    iget-boolean p1, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->o:Z

    if-nez p1, :cond_7

    iget-object p1, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->f:Lcom/transsion/shorttv/ui/fragment/ShortTvDetailListFragment;

    if-eqz p1, :cond_7

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->isVisible()Z

    move-result p1

    if-ne p1, p2, :cond_7

    sget-object v0, Llg/a;->a:Llg/a$a;

    iget-object v1, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->a:Ljava/lang/String;

    const/4 v4, 0x4

    const/4 v5, 0x0

    const-string v2, "ON_RESUME"

    const/4 v3, 0x0

    invoke-static/range {v0 .. v5}, Llg/a$a;->f(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    invoke-direct {p0}, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->H0()V

    goto :goto_0

    :cond_5
    iput-boolean p2, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->q:Z

    sget-object v6, Llg/a;->a:Llg/a$a;

    iget-object v7, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->a:Ljava/lang/String;

    const/4 v10, 0x4

    const/4 v11, 0x0

    const-string v8, "player- onPause"

    const/4 v9, 0x0

    invoke-static/range {v6 .. v11}, Llg/a$a;->f(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    iget-object p1, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->z:Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;

    if-eqz p1, :cond_6

    invoke-virtual {p1}, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;->z0()Lqs/g;

    move-result-object p1

    if-eqz p1, :cond_6

    iget-object v0, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->j:Lcom/transsion/player/orplayer/g;

    invoke-interface {p1, v0}, Lqs/g;->f(Lcom/transsion/player/orplayer/g;)Z

    move-result p1

    if-ne p1, p2, :cond_6

    goto :goto_0

    :cond_6
    iget-object p1, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->j:Lcom/transsion/player/orplayer/g;

    if-eqz p1, :cond_7

    invoke-interface {p1}, Lcom/transsion/player/orplayer/g;->pause()V

    :cond_7
    :goto_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->m:Landroid/view/GestureDetector;

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

.method public onUnGzZip(Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/subtitle_download/a$a;->b(Lcom/transsion/subtitle_download/a;Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;)V

    return-void
.end method

.method public onVideoPause(Lao/e;)V
    .locals 6

    sget-object v0, Llg/a;->a:Llg/a$a;

    iget-object v1, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->a:Ljava/lang/String;

    const/4 v4, 0x4

    const/4 v5, 0x0

    const-string v2, "player- onVideoPause"

    const/4 v3, 0x0

    invoke-static/range {v0 .. v5}, Llg/a$a;->f(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    iget-boolean p1, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->o:Z

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->c:Lms/k0;

    iget-object p1, p1, Lms/k0;->m:Landroidx/appcompat/widget/AppCompatImageView;

    const-string v1, "ivPlayStatus"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    iget-object p1, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->n:Lss/c;

    if-eqz p1, :cond_1

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {p1, v2, v1, v2}, Lcom/transsion/player/orplayer/f$a;->G(Lcom/transsion/player/orplayer/f;Lao/e;ILjava/lang/Object;)V

    :cond_1
    iget-object p1, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->D:Lcom/transsion/shorttv/subtitle/a;

    if-eqz p1, :cond_2

    invoke-interface {p1, v0}, Lcom/transsion/shorttv/subtitle/a;->c(Z)V

    :cond_2
    invoke-virtual {p0, v0}, Landroid/view/View;->setKeepScreenOn(Z)V

    invoke-direct {p0}, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->P0()V

    return-void
.end method

.method public onVideoSizeChanged(II)V
    .locals 6

    iput p1, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->B:I

    iput p2, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->C:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->Z0(Ljava/lang/Integer;Ljava/lang/Integer;)V

    sget-object v0, Llg/a;->a:Llg/a$a;

    iget-object v1, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->a:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "onVideoSizeChanged "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x4

    const/4 v5, 0x0

    const/4 v3, 0x0

    invoke-static/range {v0 .. v5}, Llg/a$a;->f(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    return-void
.end method

.method public onVideoStart(Lao/e;)V
    .locals 6

    sget-object v0, Llg/a;->a:Llg/a$a;

    iget-object v1, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->a:Ljava/lang/String;

    const/4 v4, 0x4

    const/4 v5, 0x0

    const-string v2, "player- onVideoStart"

    const/4 v3, 0x0

    invoke-static/range {v0 .. v5}, Llg/a$a;->f(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    invoke-virtual {p0, p1}, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->onPrepare(Lao/e;)V

    iget-object p1, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->n:Lss/c;

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    const/4 v1, 0x0

    invoke-static {p1, v1, v0, v1}, Lcom/transsion/player/orplayer/f$a;->J(Lcom/transsion/player/orplayer/f;Lao/e;ILjava/lang/Object;)V

    :cond_0
    iget-object p1, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->c:Lms/k0;

    iget-object p1, p1, Lms/k0;->m:Landroidx/appcompat/widget/AppCompatImageView;

    const-string v1, "ivPlayStatus"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v1, 0x8

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->D:Lcom/transsion/shorttv/subtitle/a;

    if-eqz p1, :cond_1

    invoke-interface {p1, v0}, Lcom/transsion/shorttv/subtitle/a;->c(Z)V

    :cond_1
    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->setLoading(Z)V

    invoke-virtual {p0, v0}, Landroid/view/View;->setKeepScreenOn(Z)V

    invoke-direct {p0}, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->L()V

    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 0

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onWindowFocusChanged(Z)V

    return-void
.end method

.method public final reset()V
    .locals 6

    sget-object v0, Llg/a;->a:Llg/a$a;

    iget-object v1, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->d:Ljs/e;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "playNewMedia data: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x4

    const/4 v5, 0x0

    const/4 v3, 0x0

    invoke-static/range {v0 .. v5}, Llg/a$a;->f(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/View;->setKeepScreenOn(Z)V

    iput-boolean v0, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->o:Z

    iget-object v1, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->f:Lcom/transsion/shorttv/ui/fragment/ShortTvDetailListFragment;

    if-eqz v1, :cond_0

    invoke-virtual {v1, v0}, Lcom/transsion/shorttv/ui/fragment/ShortTvDetailListFragment;->m1(Z)V

    :cond_0
    iput-boolean v0, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->K:Z

    iget-object v1, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->n:Lss/c;

    if-eqz v1, :cond_1

    invoke-direct {p0}, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->i0()Z

    move-result v2

    invoke-virtual {v1, v2, v0}, Lss/c;->e(ZZ)V

    :cond_1
    invoke-direct {p0}, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->i0()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->z:Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;

    if-eqz v0, :cond_3

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;->H0()Landroidx/lifecycle/LiveData;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroidx/lifecycle/LiveData;->f()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/shorttv/bean/Subject;

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->d:Ljs/e;

    iget-object v3, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->c:Lms/k0;

    iget-object v3, v3, Lms/k0;->u:Landroidx/appcompat/widget/AppCompatSeekBar;

    invoke-virtual {v3}, Landroid/widget/ProgressBar;->getProgress()I

    move-result v3

    int-to-long v3, v3

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;->s1(Lcom/transsion/shorttv/bean/Subject;Ljs/e;J)V

    :cond_3
    iget-object v0, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->c:Lms/k0;

    iget-object v0, v0, Lms/k0;->m:Landroidx/appcompat/widget/AppCompatImageView;

    const-string v1, "ivPlayStatus"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Lyr/b;->b(Landroid/view/View;)V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->r:J

    invoke-direct {p0, v0, v1}, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->V0(J)V

    const-wide/16 v0, 0x64

    invoke-direct {p0, v0, v1}, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->W0(J)V

    return-void
.end method

.method public final setCountdownController(Lcom/transsion/shorttv/ui/widget/a1;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->V:Lcom/transsion/shorttv/ui/widget/a1;

    return-void
.end method

.method public setData(Ljs/e;Lcom/transsion/shorttv/ui/fragment/ShortTvDetailListFragment;Ljava/lang/Integer;ZLjava/lang/String;Ljava/lang/String;ZZ)V
    .locals 23

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p5

    const-string v5, "item"

    invoke-static {v1, v5}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v5, "fragment"

    invoke-static {v2, v5}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v6, Llg/a;->a:Llg/a$a;

    iget-object v7, v0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->a:Ljava/lang/String;

    invoke-virtual/range {p1 .. p1}, Ljs/e;->c()I

    move-result v5

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "setData position:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v9, "  ep:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " item:"

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " "

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v10, 0x4

    const/4 v11, 0x0

    const/4 v9, 0x0

    invoke-static/range {v6 .. v11}, Llg/a$a;->f(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    iput-object v2, v0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->f:Lcom/transsion/shorttv/ui/fragment/ShortTvDetailListFragment;

    invoke-static/range {p4 .. p4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    iput-object v5, v0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->g:Ljava/lang/Boolean;

    iput-object v4, v0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->i:Ljava/lang/String;

    iput-object v3, v0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->h:Ljava/lang/Integer;

    invoke-virtual/range {p2 .. p2}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v0, v3}, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->getViewModel(Landroidx/fragment/app/FragmentActivity;)Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;

    move-result-object v5

    iput-object v5, v0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->z:Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;

    new-instance v5, Landroidx/lifecycle/v0;

    invoke-direct {v5, v3}, Landroidx/lifecycle/v0;-><init>(Landroidx/lifecycle/y0;)V

    const-class v3, Lws/a;

    invoke-virtual {v5, v3}, Landroidx/lifecycle/v0;->a(Ljava/lang/Class;)Landroidx/lifecycle/t0;

    move-result-object v3

    check-cast v3, Lws/a;

    iput-object v3, v0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->A:Lws/a;

    :cond_0
    invoke-virtual/range {p2 .. p2}, Landroidx/fragment/app/Fragment;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroidx/lifecycle/Lifecycle;->a(Landroidx/lifecycle/t;)V

    iput-object v1, v0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->d:Ljs/e;

    invoke-virtual/range {p1 .. p1}, Ljs/e;->d()Lcom/transsion/shorttv/bean/ShortTVItem;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-direct/range {p0 .. p0}, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->g0()V

    :cond_1
    if-nez p7, :cond_2

    new-instance v3, Lss/c;

    iget-object v5, v0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->z:Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;

    invoke-direct {v3, v2, v5}, Lss/c;-><init>(Landroidx/fragment/app/Fragment;Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;)V

    iput-object v3, v0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->n:Lss/c;

    :cond_2
    iget-object v3, v0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->n:Lss/c;

    if-eqz v3, :cond_3

    invoke-virtual {v3, v4}, Lss/c;->k(Ljava/lang/String;)V

    :cond_3
    iget-object v3, v0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->n:Lss/c;

    if-eqz v3, :cond_4

    move-object/from16 v4, p6

    invoke-virtual {v3, v4}, Lss/c;->j(Ljava/lang/String;)V

    :cond_4
    iget-object v3, v0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->n:Lss/c;

    if-eqz v3, :cond_5

    invoke-virtual/range {p2 .. p2}, Lcom/transsion/shorttv/ui/fragment/ShortTvDetailListFragment;->getPageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lss/c;->r(Ljava/lang/String;)V

    :cond_5
    iget-object v3, v0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->n:Lss/c;

    if-eqz v3, :cond_6

    invoke-virtual/range {p1 .. p1}, Ljs/e;->b()I

    move-result v4

    invoke-virtual {v3, v4}, Lss/c;->l(I)V

    :cond_6
    invoke-direct/range {p0 .. p0}, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->T0()V

    iget-object v3, v0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->z:Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;

    const/4 v4, 0x0

    if-eqz v3, :cond_10

    invoke-virtual {v3}, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;->H0()Landroidx/lifecycle/LiveData;

    move-result-object v3

    if-eqz v3, :cond_10

    invoke-virtual {v3}, Landroidx/lifecycle/LiveData;->f()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/transsion/shorttv/bean/Subject;

    if-eqz v3, :cond_10

    iget-object v5, v0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->n:Lss/c;

    if-eqz v5, :cond_7

    invoke-virtual {v5, v3}, Lss/c;->t(Lcom/transsion/shorttv/bean/Subject;)V

    :cond_7
    iput-object v3, v0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->e:Lcom/transsion/shorttv/bean/Subject;

    iget-object v5, v0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->d:Ljs/e;

    if-eqz v5, :cond_8

    invoke-virtual {v5}, Ljs/e;->c()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    goto :goto_0

    :cond_8
    move-object v5, v4

    :goto_0
    invoke-static {v5}, Lcom/transsion/shorttv/utils/i;->e(Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object v5

    iget-object v6, v0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->e:Lcom/transsion/shorttv/bean/Subject;

    if-eqz v6, :cond_9

    invoke-virtual {v6}, Lcom/transsion/shorttv/bean/Subject;->getTotalEpisode()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v6}, Lcom/transsion/shorttv/utils/i;->e(Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object v6

    goto :goto_1

    :cond_9
    move-object v6, v4

    :goto_1
    invoke-virtual/range {p1 .. p1}, Ljs/e;->c()I

    move-result v7

    const-string v8, " / EP"

    if-nez v7, :cond_a

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v7

    sget v9, Lcom/transsion/shorttv/R$string;->short_tv_trailer:I

    invoke-virtual {v7, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    iget-object v7, v0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->c:Lms/k0;

    iget-object v7, v7, Lms/k0;->y:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {v7, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    :cond_a
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "EP"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    iget-object v7, v0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->c:Lms/k0;

    iget-object v7, v7, Lms/k0;->y:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {v7, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_2
    invoke-virtual {v3}, Lcom/transsion/shorttv/bean/Subject;->getCover()Lcom/transsion/shorttv/bean/Cover;

    move-result-object v6

    if-eqz v6, :cond_e

    invoke-virtual/range {p2 .. p2}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v8

    if-nez v8, :cond_b

    goto :goto_4

    :cond_b
    sget-object v7, Las/b;->a:Las/b$a;

    iget-object v2, v0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->c:Lms/k0;

    iget-object v9, v2, Lms/k0;->o:Lcom/google/android/material/imageview/ShapeableImageView;

    const-string v2, "ivShortCover"

    invoke-static {v9, v2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v6}, Lcom/transsion/shorttv/bean/Cover;->getUrl()Ljava/lang/String;

    move-result-object v2

    const-string v10, ""

    if-nez v2, :cond_c

    move-object v2, v10

    :cond_c
    const/high16 v11, 0x41a80000    # 21.0f

    invoke-static {v11}, Lcom/blankj/utilcode/util/i;->e(F)I

    move-result v11

    const/high16 v12, 0x41f00000    # 30.0f

    invoke-static {v12}, Lcom/blankj/utilcode/util/i;->e(F)I

    move-result v12

    invoke-virtual {v6}, Lcom/transsion/shorttv/bean/Cover;->getThumbnail()Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_d

    move-object v14, v10

    goto :goto_3

    :cond_d
    move-object v14, v6

    :goto_3
    const/16 v21, 0x1fa0

    const/16 v22, 0x0

    const/4 v13, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    move-object v10, v2

    invoke-static/range {v7 .. v22}, Las/b$a;->m(Las/b$a;Landroid/content/Context;Landroid/widget/ImageView;Ljava/lang/String;IIZLjava/lang/String;ZZZZZIILjava/lang/Object;)V

    :cond_e
    :goto_4
    invoke-virtual/range {p1 .. p1}, Ljs/e;->d()Lcom/transsion/shorttv/bean/ShortTVItem;

    move-result-object v2

    if-eqz v2, :cond_f

    invoke-virtual {v2}, Lcom/transsion/shorttv/bean/ShortTVItem;->getVideo()Lcom/transsion/shorttv/bean/Media;

    move-result-object v2

    if-eqz v2, :cond_f

    invoke-virtual {v2}, Lcom/transsion/shorttv/bean/Media;->getVideoAddress()Lcom/transsion/shorttv/bean/Video;

    move-result-object v2

    if-eqz v2, :cond_f

    invoke-virtual {v2}, Lcom/transsion/shorttv/bean/Video;->getWidth()Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v2}, Lcom/transsion/shorttv/bean/Video;->getHeight()Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v0, v6, v2}, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->Z0(Ljava/lang/Integer;Ljava/lang/Integer;)V

    :cond_f
    iget-object v2, v0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->c:Lms/k0;

    iget-object v2, v2, Lms/k0;->B:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {v3}, Lcom/transsion/shorttv/bean/Subject;->getTitle()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual/range {p1 .. p1}, Ljs/e;->d()Lcom/transsion/shorttv/bean/ShortTVItem;

    move-result-object v2

    move/from16 v6, p8

    invoke-direct {v0, v5, v3, v2, v6}, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->I0(Ljava/lang/String;Lcom/transsion/shorttv/bean/Subject;Lcom/transsion/shorttv/bean/ShortTVItem;Z)V

    :cond_10
    iget-boolean v2, v0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->F:Z

    if-nez v2, :cond_21

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1e

    if-lt v2, v3, :cond_21

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "null cannot be cast to non-null type android.app.Activity"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v2

    if-eqz v2, :cond_21

    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getRootWindowInsets()Landroid/view/WindowInsets;

    move-result-object v3

    if-eqz v3, :cond_21

    invoke-static {}, Landroidx/core/view/o2;->a()I

    move-result v5

    invoke-static {v3, v5}, Landroidx/core/view/g2;->a(Landroid/view/WindowInsets;I)Landroid/graphics/Insets;

    move-result-object v3

    if-eqz v3, :cond_21

    invoke-static {v2}, Lcom/blankj/utilcode/util/d;->e(Landroid/view/Window;)Z

    move-result v2

    const/4 v5, 0x0

    if-eqz v2, :cond_11

    invoke-static {}, Lcom/blankj/utilcode/util/d;->a()I

    move-result v2

    const/4 v6, 0x1

    if-le v2, v6, :cond_11

    goto :goto_5

    :cond_11
    move v6, v5

    :goto_5
    const/high16 v2, 0x41800000    # 16.0f

    invoke-static {v2}, Lcom/blankj/utilcode/util/i;->e(F)I

    move-result v2

    const-string v7, "null cannot be cast to non-null type androidx.constraintlayout.widget.ConstraintLayout.LayoutParams"

    const-string v8, "progressGuideline"

    if-nez v6, :cond_19

    invoke-static {v3}, Landroidx/appcompat/widget/v;->a(Landroid/graphics/Insets;)I

    move-result v6

    if-lez v6, :cond_19

    iget-object v6, v0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->c:Lms/k0;

    iget-object v6, v6, Lms/k0;->t:Landroid/widget/Space;

    invoke-static {v6, v8}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    if-eqz v8, :cond_18

    check-cast v8, Landroidx/constraintlayout/widget/ConstraintLayout$b;

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    instance-of v9, v7, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v9, :cond_12

    check-cast v7, Landroid/view/ViewGroup$MarginLayoutParams;

    goto :goto_6

    :cond_12
    move-object v7, v4

    :goto_6
    if-eqz v7, :cond_13

    iget v7, v7, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    goto :goto_7

    :cond_13
    move v7, v5

    :goto_7
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    instance-of v10, v9, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v10, :cond_14

    check-cast v9, Landroid/view/ViewGroup$MarginLayoutParams;

    goto :goto_8

    :cond_14
    move-object v9, v4

    :goto_8
    if-eqz v9, :cond_15

    iget v9, v9, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    goto :goto_9

    :cond_15
    move v9, v5

    :goto_9
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v10

    instance-of v11, v10, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v11, :cond_16

    move-object v4, v10

    check-cast v4, Landroid/view/ViewGroup$MarginLayoutParams;

    :cond_16
    if-eqz v4, :cond_17

    iget v5, v4, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    :cond_17
    invoke-static {v3}, Landroidx/appcompat/widget/v;->a(Landroid/graphics/Insets;)I

    move-result v3

    invoke-static {v2, v3}, Lkotlin/ranges/RangesKt;->f(II)I

    move-result v2

    invoke-virtual {v8, v7, v9, v5, v2}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    invoke-virtual {v6, v8}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_e

    :cond_18
    new-instance v1, Ljava/lang/NullPointerException;

    invoke-direct {v1, v7}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_19
    iget-object v3, v0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->c:Lms/k0;

    iget-object v3, v3, Lms/k0;->t:Landroid/widget/Space;

    invoke-static {v3, v8}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    if-eqz v6, :cond_20

    check-cast v6, Landroidx/constraintlayout/widget/ConstraintLayout$b;

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    instance-of v8, v7, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v8, :cond_1a

    check-cast v7, Landroid/view/ViewGroup$MarginLayoutParams;

    goto :goto_a

    :cond_1a
    move-object v7, v4

    :goto_a
    if-eqz v7, :cond_1b

    iget v7, v7, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    goto :goto_b

    :cond_1b
    move v7, v5

    :goto_b
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    instance-of v9, v8, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v9, :cond_1c

    check-cast v8, Landroid/view/ViewGroup$MarginLayoutParams;

    goto :goto_c

    :cond_1c
    move-object v8, v4

    :goto_c
    if-eqz v8, :cond_1d

    iget v8, v8, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    goto :goto_d

    :cond_1d
    move v8, v5

    :goto_d
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    instance-of v10, v9, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v10, :cond_1e

    move-object v4, v9

    check-cast v4, Landroid/view/ViewGroup$MarginLayoutParams;

    :cond_1e
    if-eqz v4, :cond_1f

    iget v5, v4, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    :cond_1f
    invoke-virtual {v6, v7, v8, v5, v2}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    invoke-virtual {v3, v6}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_e

    :cond_20
    new-instance v1, Ljava/lang/NullPointerException;

    invoke-direct {v1, v7}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_21
    :goto_e
    invoke-direct/range {p0 .. p1}, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->b1(Ljs/e;)V

    invoke-virtual/range {p0 .. p1}, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->updateLockState(Ljs/e;)V

    return-void
.end method

.method public final setFirstPlayInSession(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->s:Z

    return-void
.end method

.method public setOnSeekCompleteListener()V
    .locals 0

    invoke-static {p0}, Lcom/transsion/player/orplayer/f$a;->K(Lcom/transsion/player/orplayer/f;)V

    return-void
.end method

.method public setPagerLayoutManager(Lcom/transsion/shorttv/base/pager/PagerLayoutManager;)V
    .locals 1

    const-string v0, "pagerLayoutManager"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->l:Lcom/transsion/shorttv/base/pager/PagerLayoutManager;

    return-void
.end method

.method public final setVideoUrl(Ljava/lang/String;)V
    .locals 1

    const-string v0, "url"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->n:Lss/c;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lss/c;->v(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public final showEpisodeListDialog()V
    .locals 2

    iget-object v0, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->f:Lcom/transsion/shorttv/ui/fragment/ShortTvDetailListFragment;

    const-string v1, "null cannot be cast to non-null type com.transsion.shorttv.ui.fragment.ShortTvDetailListFragment"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/transsion/shorttv/ui/fragment/ShortTvDetailListFragment;->n1()V

    return-void
.end method

.method public updateLockState(Ljs/e;)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->j0()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->W()V

    invoke-direct {p0}, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->V()V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->z:Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;->H0()Landroidx/lifecycle/LiveData;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->f()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/shorttv/bean/Subject;

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/transsion/shorttv/bean/Subject;->getMiniTvType()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_3

    invoke-virtual {v0}, Lcom/transsion/shorttv/bean/Subject;->getUnlockFrom()I

    move-result v0

    if-lez v0, :cond_3

    return-void

    :cond_3
    invoke-direct {p0, p1}, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->K0(Ljs/e;)V

    return-void
.end method

.method public updateShortTvInfo(Lcom/transsion/player/orplayer/g;Lcom/transsion/player/ui/ORPlayerView;Ljs/e;)V
    .locals 23

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    iget-object v4, v0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->z:Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;

    const/4 v5, 0x0

    if-eqz v4, :cond_0

    invoke-virtual {v4}, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;->H0()Landroidx/lifecycle/LiveData;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-virtual {v4}, Landroidx/lifecycle/LiveData;->f()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/transsion/shorttv/bean/Subject;

    goto :goto_0

    :cond_0
    move-object v4, v5

    :goto_0
    sget-object v6, Llg/a;->a:Llg/a$a;

    iget-object v7, v0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->a:Ljava/lang/String;

    iget-object v8, v0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->h:Ljava/lang/Integer;

    if-eqz v4, :cond_1

    invoke-virtual {v4}, Lcom/transsion/shorttv/bean/Subject;->getSubjectId()Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    :cond_1
    move-object v4, v5

    :goto_1
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "updateShortTvInfo:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, " subjectId:"

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v8, 0x1

    invoke-virtual {v6, v7, v4, v8}, Llg/a$a;->u(Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-direct/range {p0 .. p0}, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->j0()Z

    move-result v4

    const-string v7, "onPageSelect position:"

    if-eqz v4, :cond_5

    iget-object v4, v0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->a:Ljava/lang/String;

    iget-object v9, v0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->h:Ljava/lang/Integer;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v9, " item is locked"

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v4, v9, v8}, Llg/a$a;->c(Ljava/lang/String;Ljava/lang/String;Z)V

    iget-object v4, v0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->z:Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;

    if-eqz v4, :cond_2

    invoke-virtual {v4}, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;->H0()Landroidx/lifecycle/LiveData;

    move-result-object v4

    if-eqz v4, :cond_2

    invoke-virtual {v4}, Landroidx/lifecycle/LiveData;->f()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/transsion/shorttv/bean/Subject;

    goto :goto_2

    :cond_2
    move-object v4, v5

    :goto_2
    if-eqz v4, :cond_3

    invoke-virtual {v4}, Lcom/transsion/shorttv/bean/Subject;->getMiniTvType()I

    move-result v6

    const/4 v9, 0x2

    if-ne v6, v9, :cond_3

    invoke-virtual {v4}, Lcom/transsion/shorttv/bean/Subject;->getUnlockFrom()I

    move-result v4

    if-lez v4, :cond_3

    invoke-direct/range {p0 .. p0}, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->J0()V

    goto :goto_3

    :cond_3
    if-eqz v1, :cond_4

    invoke-interface/range {p1 .. p1}, Lcom/transsion/player/orplayer/g;->pause()V

    :cond_4
    invoke-direct {v0, v3}, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->K0(Ljs/e;)V

    return-void

    :cond_5
    invoke-direct/range {p0 .. p0}, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->W()V

    invoke-direct/range {p0 .. p0}, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->V()V

    :goto_3
    iget-object v4, v0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->z:Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;

    if-eqz v4, :cond_9

    invoke-virtual {v4}, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;->u0()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v4

    if-eqz v4, :cond_9

    if-eqz v3, :cond_6

    invoke-virtual/range {p3 .. p3}, Ljs/e;->e()Ljava/lang/String;

    move-result-object v6

    goto :goto_4

    :cond_6
    move-object v6, v5

    :goto_4
    invoke-interface {v4, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/lifecycle/b0;

    if-eqz v4, :cond_9

    invoke-virtual {v4}, Landroidx/lifecycle/LiveData;->f()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    if-eqz v4, :cond_9

    check-cast v4, Ljava/lang/Iterable;

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_7
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_8

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    move-object v9, v6

    check-cast v9, Lcom/transsion/shorttv/bean/ShortTVItem;

    if-eqz v3, :cond_7

    invoke-virtual {v9}, Lcom/transsion/shorttv/bean/ShortTVItem;->getEp()I

    move-result v9

    invoke-virtual/range {p3 .. p3}, Ljs/e;->c()I

    move-result v10

    if-ne v9, v10, :cond_7

    goto :goto_5

    :cond_8
    move-object v6, v5

    :goto_5
    check-cast v6, Lcom/transsion/shorttv/bean/ShortTVItem;

    if-eqz v6, :cond_9

    invoke-virtual {v6}, Lcom/transsion/shorttv/bean/ShortTVItem;->getVideo()Lcom/transsion/shorttv/bean/Media;

    move-result-object v4

    if-eqz v4, :cond_9

    invoke-virtual {v4}, Lcom/transsion/shorttv/bean/Media;->getVideo()Lcom/transsion/shorttv/bean/Video;

    move-result-object v4

    goto :goto_6

    :cond_9
    move-object v4, v5

    :goto_6
    if-eqz v3, :cond_a

    invoke-virtual/range {p3 .. p3}, Ljs/e;->d()Lcom/transsion/shorttv/bean/ShortTVItem;

    move-result-object v6

    if-eqz v6, :cond_a

    invoke-virtual {v6}, Lcom/transsion/shorttv/bean/ShortTVItem;->getVideo()Lcom/transsion/shorttv/bean/Media;

    move-result-object v6

    if-eqz v6, :cond_a

    invoke-virtual {v6}, Lcom/transsion/shorttv/bean/Media;->getVideo()Lcom/transsion/shorttv/bean/Video;

    move-result-object v6

    goto :goto_7

    :cond_a
    move-object v6, v5

    :goto_7
    if-nez v4, :cond_c

    if-nez v6, :cond_b

    return-void

    :cond_b
    move-object v4, v6

    :cond_c
    invoke-static/range {p3 .. p3}, Ljs/l;->b(Ljs/e;)Z

    move-result v6

    if-eqz v6, :cond_e

    sget-object v2, Llg/a;->a:Llg/a$a;

    iget-object v3, v0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->a:Ljava/lang/String;

    iget-object v4, v0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->h:Ljava/lang/Integer;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " item is null "

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4, v8}, Llg/a$a;->c(Ljava/lang/String;Ljava/lang/String;Z)V

    if-eqz v1, :cond_d

    invoke-interface/range {p1 .. p1}, Lcom/transsion/player/orplayer/g;->pause()V

    :cond_d
    return-void

    :cond_e
    if-eqz v1, :cond_f

    invoke-interface {v1, v0}, Lcom/transsion/player/orplayer/g;->setPlayerListener(Lcom/transsion/player/orplayer/f;)V

    :cond_f
    if-eqz v2, :cond_11

    if-eqz v3, :cond_10

    invoke-virtual/range {p3 .. p3}, Ljs/e;->d()Lcom/transsion/shorttv/bean/ShortTVItem;

    move-result-object v6

    if-eqz v6, :cond_10

    invoke-virtual {v6}, Lcom/transsion/shorttv/bean/ShortTVItem;->getVideo()Lcom/transsion/shorttv/bean/Media;

    move-result-object v6

    if-eqz v6, :cond_10

    invoke-virtual {v6}, Lcom/transsion/shorttv/bean/Media;->getVideoAddress()Lcom/transsion/shorttv/bean/Video;

    move-result-object v6

    goto :goto_8

    :cond_10
    move-object v6, v5

    :goto_8
    invoke-direct {v0, v2, v6}, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->I(Lcom/transsion/player/ui/ORPlayerView;Lcom/transsion/shorttv/bean/Video;)V

    sget-object v9, Llg/a;->a:Llg/a$a;

    iget-object v10, v0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->a:Ljava/lang/String;

    const/4 v13, 0x4

    const/4 v14, 0x0

    const-string v11, "addView-----"

    const/4 v12, 0x0

    invoke-static/range {v9 .. v14}, Llg/a$a;->f(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    :cond_11
    iget-object v2, v0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->y:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->videoStartPrepare(Ljava/lang/String;)V

    sget-object v2, Llg/a;->a:Llg/a$a;

    iget-object v10, v0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->a:Ljava/lang/String;

    invoke-virtual {v4}, Lcom/transsion/shorttv/bean/Video;->getUrl()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4}, Lcom/transsion/shorttv/bean/Video;->getWidth()Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v4}, Lcom/transsion/shorttv/bean/Video;->getHeight()Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v4}, Lcom/transsion/shorttv/bean/Video;->getDuration()Ljava/lang/Integer;

    move-result-object v11

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "play url="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "  width:"

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, ",height:"

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, ", duration: "

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, ", builtIn = false"

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    const/4 v13, 0x4

    const/4 v14, 0x0

    const/4 v12, 0x0

    move-object v9, v2

    invoke-static/range {v9 .. v14}, Llg/a$a;->f(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    invoke-virtual {v4}, Lcom/transsion/shorttv/bean/Video;->getUrl()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_1c

    if-eqz v3, :cond_14

    invoke-virtual/range {p3 .. p3}, Ljs/e;->c()I

    move-result v7

    iget-object v9, v0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->z:Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;

    if-eqz v9, :cond_12

    invoke-virtual {v9, v7}, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;->L(I)V

    :cond_12
    iget-object v9, v0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->z:Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;

    if-eqz v9, :cond_13

    invoke-virtual {v9, v7}, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;->W(I)J

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    goto :goto_9

    :cond_13
    move-object v7, v5

    :goto_9
    if-eqz v7, :cond_14

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    :goto_a
    move-wide v13, v9

    goto :goto_b

    :cond_14
    const-wide/16 v9, 0x0

    goto :goto_a

    :goto_b
    instance-of v7, v1, Llo/f;

    if-eqz v7, :cond_15

    move-object v5, v1

    check-cast v5, Llo/f;

    :cond_15
    if-eqz v5, :cond_16

    invoke-interface {v5}, Llo/f;->a()Ljava/util/Map;

    move-result-object v5

    if-eqz v5, :cond_16

    invoke-interface {v5, v6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    goto :goto_c

    :cond_16
    move v5, v8

    :goto_c
    if-nez v5, :cond_1a

    iget-object v7, v0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->z:Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;

    if-eqz v7, :cond_17

    invoke-virtual {v7, v8}, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;->e1(Z)V

    :cond_17
    new-instance v7, Lao/e;

    if-eqz v3, :cond_18

    invoke-virtual/range {p3 .. p3}, Ljs/e;->d()Lcom/transsion/shorttv/bean/ShortTVItem;

    move-result-object v3

    if-eqz v3, :cond_18

    invoke-virtual {v3}, Lcom/transsion/shorttv/bean/ShortTVItem;->getEp()I

    move-result v3

    :goto_d
    move/from16 v18, v3

    goto :goto_e

    :cond_18
    const/4 v3, 0x0

    goto :goto_d

    :goto_e
    const/16 v21, 0x18

    const/16 v22, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    move-object v15, v7

    move-object/from16 v16, v6

    move-object/from16 v17, v6

    invoke-direct/range {v15 .. v22}, Lao/e;-><init>(Ljava/lang/String;Ljava/lang/String;ILcom/transsion/player/enum/PlayMimeType;Lcom/transsion/player/mediasession/MediaItem;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object v3, v1

    check-cast v3, Llo/f;

    if-eqz v3, :cond_19

    invoke-interface {v3, v7}, Lcom/transsion/player/orplayer/g;->addDataSource(Lao/e;)Z

    :cond_19
    if-eqz v3, :cond_1a

    invoke-interface {v3}, Lcom/transsion/player/orplayer/g;->prepare()V

    :cond_1a
    iget-object v10, v0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->a:Ljava/lang/String;

    invoke-virtual {v4}, Lcom/transsion/shorttv/bean/Video;->getResolution()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "------seekTo resolution:"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ",url="

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", cachedProgress="

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v11

    const/4 v3, 0x4

    const/4 v4, 0x0

    const/4 v12, 0x0

    move-object v9, v2

    move-wide v7, v13

    move v13, v3

    move-object v14, v4

    invoke-static/range {v9 .. v14}, Llg/a$a;->r(Llg/a$a;Ljava/lang/String;[Ljava/lang/String;ZILjava/lang/Object;)V

    if-eqz v1, :cond_1b

    invoke-interface {v1, v6, v7, v8}, Lcom/transsion/player/orplayer/g;->seekTo(Ljava/lang/String;J)V

    :cond_1b
    invoke-virtual {v0, v6}, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->setVideoUrl(Ljava/lang/String;)V

    if-nez v5, :cond_1c

    new-instance v1, Lcom/transsion/shorttv/ui/widget/v0;

    invoke-direct {v1, v0}, Lcom/transsion/shorttv/ui/widget/v0;-><init>(Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :cond_1c
    invoke-direct/range {p0 .. p0}, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->H0()V

    return-void
.end method

.method public final updateUnlockCountdownText$shortTvLib_release(Ljava/lang/Integer;)V
    .locals 3

    iget-object v0, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->R:Landroid/view/View;

    if-eqz v0, :cond_0

    sget v1, Lcom/transsion/shorttv/R$id;->btn_watch_ad_unlock:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/AppCompatTextView;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/transsion/shorttv/R$string;->short_tv_locked_watch_ad_unlock_static:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "getString(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p1, :cond_1

    if-eqz v0, :cond_2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " \u00b7 "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "s"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_1
    if-eqz v0, :cond_2

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    :goto_1
    return-void
.end method

.method public final videoStartPrepare(Ljava/lang/String;)V
    .locals 2

    const-string v0, "pageFrom"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->K:Z

    iput-object p1, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->y:Ljava/lang/String;

    iget-object v1, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->n:Lss/c;

    if-eqz v1, :cond_0

    invoke-virtual {v1, p1}, Lss/c;->q(Ljava/lang/String;)V

    :cond_0
    iget-object p1, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->n:Lss/c;

    if-eqz p1, :cond_1

    const-string v1, "immersive_play"

    invoke-virtual {p1, v1}, Lss/c;->o(Ljava/lang/String;)V

    :cond_1
    iget-object p1, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->n:Lss/c;

    if-eqz p1, :cond_2

    sget-object v1, Lcom/transsion/shorttv/bean/SubjectType;->SHORT_TV:Lcom/transsion/shorttv/bean/SubjectType;

    invoke-virtual {v1}, Lcom/transsion/shorttv/bean/SubjectType;->getValue()I

    move-result v1

    invoke-virtual {p1, v1}, Lss/c;->u(I)V

    :cond_2
    iget-object p1, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->n:Lss/c;

    if-eqz p1, :cond_4

    iget-object v1, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->d:Ljs/e;

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Ljs/e;->c()I

    move-result v1

    goto :goto_0

    :cond_3
    move v1, v0

    :goto_0
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lss/c;->m(Ljava/lang/String;)V

    :cond_4
    iget-object p1, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->n:Lss/c;

    if-eqz p1, :cond_5

    invoke-virtual {p1, p0, v0}, Lss/c;->g(Landroid/view/View;Z)V

    :cond_5
    iget-object p1, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->n:Lss/c;

    if-eqz p1, :cond_6

    invoke-virtual {p1, v0, v0}, Lss/c;->a(II)V

    :cond_6
    iget-object p1, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->n:Lss/c;

    if-eqz p1, :cond_7

    iget-object v0, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->h:Ljava/lang/Integer;

    invoke-virtual {p1, v0}, Lss/c;->s(Ljava/lang/Integer;)V

    :cond_7
    iget-object p1, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->n:Lss/c;

    if-eqz p1, :cond_8

    iget-boolean v0, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->s:Z

    invoke-virtual {p1, v0}, Lss/c;->n(Z)V

    :cond_8
    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->setLoading(Z)V

    iget-object p1, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->z:Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;

    if-eqz p1, :cond_9

    invoke-virtual {p1}, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;->T0()V

    :cond_9
    return-void
.end method

.method public final watchAdToUnlock$shortTvLib_release(Z)V
    .locals 12

    sget-object v0, Lss/b;->a:Lss/b;

    iget-object v1, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->z:Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;->H0()Landroidx/lifecycle/LiveData;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroidx/lifecycle/LiveData;->f()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/shorttv/bean/Subject;

    goto :goto_0

    :cond_0
    move-object v1, v2

    :goto_0
    iget-object v3, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->d:Ljs/e;

    const/4 v4, 0x0

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Ljs/e;->c()I

    move-result v3

    goto :goto_1

    :cond_1
    move v3, v4

    :goto_1
    if-eqz p1, :cond_2

    const-string p1, "auto"

    goto :goto_2

    :cond_2
    const-string p1, "manual"

    :goto_2
    const-string v5, "minitv_ad"

    invoke-virtual {v0, v1, v3, v5, p1}, Lss/b;->h(Lcom/transsion/shorttv/bean/Subject;ILjava/lang/String;Ljava/lang/String;)V

    sget-object p1, Lnh/m;->a:Lnh/m;

    invoke-virtual {p1}, Lnh/m;->e()Z

    move-result p1

    if-nez p1, :cond_3

    sget-object p1, Lfs/b;->a:Lfs/b$a;

    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    move-result-object v0

    sget v1, Lcom/transsion/shorttv/R$string;->short_tv_no_network_toast:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lfs/b$a;->e(Ljava/lang/CharSequence;)V

    return-void

    :cond_3
    iget-object p1, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->f:Lcom/transsion/shorttv/ui/fragment/ShortTvDetailListFragment;

    if-eqz p1, :cond_e

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_4

    goto :goto_3

    :cond_4
    move-object p1, v2

    :goto_3
    if-nez p1, :cond_5

    goto/16 :goto_8

    :cond_5
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Landroidx/lifecycle/u;

    move-result-object p1

    const-string v0, "getViewLifecycleOwner(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Landroidx/lifecycle/v;->a(Landroidx/lifecycle/u;)Landroidx/lifecycle/LifecycleCoroutineScope;

    move-result-object p1

    iget-object v0, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->f:Lcom/transsion/shorttv/ui/fragment/ShortTvDetailListFragment;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_6

    goto :goto_4

    :cond_6
    move-object v7, v0

    goto :goto_6

    :cond_7
    :goto_4
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    instance-of v1, v0, Landroidx/fragment/app/FragmentActivity;

    if-eqz v1, :cond_8

    check-cast v0, Landroidx/fragment/app/FragmentActivity;

    goto :goto_5

    :cond_8
    move-object v0, v2

    :goto_5
    if-nez v0, :cond_6

    return-void

    :goto_6
    iget-object v0, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->R:Landroid/view/View;

    if-eqz v0, :cond_9

    sget v1, Lcom/transsion/shorttv/R$id;->btn_watch_ad_unlock:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/AppCompatTextView;

    move-object v10, v0

    goto :goto_7

    :cond_9
    move-object v10, v2

    :goto_7
    if-eqz v10, :cond_a

    invoke-virtual {v10, v4}, Landroid/view/View;->setEnabled(Z)V

    :cond_a
    iget-object v11, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->d:Ljs/e;

    iget-object v0, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->T:Lcom/transsion/shorttv/ad/common/STCommonVideoAdHelper;

    if-eqz v0, :cond_b

    const/4 v1, 0x1

    invoke-static {v0, v4, v1, v2}, Lcom/transsion/shorttv/ad/common/STCommonVideoAdHelper;->q(Lcom/transsion/shorttv/ad/common/STCommonVideoAdHelper;IILjava/lang/Object;)V

    :cond_b
    new-instance v0, Lcom/transsion/shorttv/ad/common/STCommonVideoAdHelper;

    const-string v1, "ShortTvPlayerUnlockPlayScene"

    invoke-direct {v0, v1, p1}, Lcom/transsion/shorttv/ad/common/STCommonVideoAdHelper;-><init>(Ljava/lang/String;Lkotlinx/coroutines/n0;)V

    iput-object v0, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->T:Lcom/transsion/shorttv/ad/common/STCommonVideoAdHelper;

    iget-object p1, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->z:Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;

    if-eqz p1, :cond_c

    invoke-virtual {p1}, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;->H0()Landroidx/lifecycle/LiveData;

    move-result-object p1

    if-eqz p1, :cond_c

    invoke-virtual {p1}, Landroidx/lifecycle/LiveData;->f()Ljava/lang/Object;

    move-result-object p1

    move-object v2, p1

    check-cast v2, Lcom/transsion/shorttv/bean/Subject;

    :cond_c
    move-object v8, v2

    iget-object p1, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->d:Ljs/e;

    if-eqz p1, :cond_d

    invoke-virtual {p1}, Ljs/e;->c()I

    move-result v4

    :cond_d
    move v9, v4

    iget-object p1, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->T:Lcom/transsion/shorttv/ad/common/STCommonVideoAdHelper;

    if-eqz p1, :cond_e

    new-instance v0, Lcom/transsion/shorttv/ui/widget/u0;

    move-object v5, v0

    move-object v6, p0

    invoke-direct/range {v5 .. v11}, Lcom/transsion/shorttv/ui/widget/u0;-><init>(Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;Landroidx/fragment/app/FragmentActivity;Lcom/transsion/shorttv/bean/Subject;ILandroidx/appcompat/widget/AppCompatTextView;Ljs/e;)V

    invoke-virtual {p1, v0}, Lcom/transsion/shorttv/ad/common/STCommonVideoAdHelper;->t(Lkotlin/jvm/functions/Function3;)V

    :cond_e
    :goto_8
    return-void
.end method
