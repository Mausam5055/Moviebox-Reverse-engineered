.class public final Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;
.super Ljava/lang/Object;


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000)\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010\t\n\u0002\u0008\u0004\n\u0002\u0010\u0008\n\u0002\u0008\u000c\n\u0002\u0010\u000b\n\u0003\u0008\u0094\u0001\u0008\u0087\u0008\u0018\u0000 \u00a9\u00012\u00020\u0001:\u0002\u00aa\u0001B\u009d\u0003\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0004\u001a\u00020\u0002\u0012\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u0005\u0012\n\u0008\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0002\u0012\n\u0008\u0002\u0010\u0008\u001a\u0004\u0018\u00010\u0002\u0012\n\u0008\u0002\u0010\t\u001a\u0004\u0018\u00010\u0002\u0012\u0008\u0008\u0002\u0010\u000b\u001a\u00020\n\u0012\n\u0008\u0002\u0010\u000c\u001a\u0004\u0018\u00010\u0002\u0012\n\u0008\u0002\u0010\r\u001a\u0004\u0018\u00010\n\u0012\n\u0008\u0002\u0010\u000e\u001a\u0004\u0018\u00010\n\u0012\n\u0008\u0002\u0010\u000f\u001a\u0004\u0018\u00010\n\u0012\n\u0008\u0002\u0010\u0010\u001a\u0004\u0018\u00010\n\u0012\u0008\u0008\u0002\u0010\u0011\u001a\u00020\u0005\u0012\n\u0008\u0002\u0010\u0012\u001a\u0004\u0018\u00010\u0002\u0012\n\u0008\u0002\u0010\u0013\u001a\u0004\u0018\u00010\u0005\u0012\n\u0008\u0002\u0010\u0014\u001a\u0004\u0018\u00010\u0005\u0012\n\u0008\u0002\u0010\u0015\u001a\u0004\u0018\u00010\u0002\u0012\n\u0008\u0002\u0010\u0016\u001a\u0004\u0018\u00010\n\u0012\u0008\u0008\u0002\u0010\u0018\u001a\u00020\u0017\u0012\u0008\u0008\u0002\u0010\u0019\u001a\u00020\u0002\u0012\n\u0008\u0002\u0010\u001a\u001a\u0004\u0018\u00010\u0002\u0012\n\u0008\u0002\u0010\u001b\u001a\u0004\u0018\u00010\u0002\u0012\n\u0008\u0002\u0010\u001c\u001a\u0004\u0018\u00010\u0002\u0012\u0008\u0008\u0002\u0010\u001d\u001a\u00020\u0005\u0012\n\u0008\u0002\u0010\u001e\u001a\u0004\u0018\u00010\u0005\u0012\n\u0008\u0002\u0010\u001f\u001a\u0004\u0018\u00010\u0005\u0012\u0008\u0008\u0002\u0010 \u001a\u00020\u0017\u0012\u0008\u0008\u0002\u0010!\u001a\u00020\u0017\u0012\u0008\u0008\u0002\u0010\"\u001a\u00020\u0017\u0012\n\u0008\u0002\u0010#\u001a\u0004\u0018\u00010\u0002\u0012\n\u0008\u0002\u0010$\u001a\u0004\u0018\u00010\u0002\u0012\n\u0008\u0002\u0010%\u001a\u0004\u0018\u00010\u0002\u0012\n\u0008\u0002\u0010&\u001a\u0004\u0018\u00010\u0002\u0012\n\u0008\u0002\u0010\'\u001a\u0004\u0018\u00010\u0002\u0012\n\u0008\u0002\u0010(\u001a\u0004\u0018\u00010\u0002\u0012\n\u0008\u0002\u0010)\u001a\u0004\u0018\u00010\u0002\u00a2\u0006\u0004\u0008*\u0010+J\r\u0010,\u001a\u00020\u0000\u00a2\u0006\u0004\u0008,\u0010-J\r\u0010.\u001a\u00020\u0017\u00a2\u0006\u0004\u0008.\u0010/J\u0010\u00100\u001a\u00020\u0002H\u00c6\u0003\u00a2\u0006\u0004\u00080\u00101J\u0010\u00102\u001a\u00020\u0002H\u00c6\u0003\u00a2\u0006\u0004\u00082\u00101J\u0010\u00103\u001a\u00020\u0005H\u00c6\u0003\u00a2\u0006\u0004\u00083\u00104J\u0012\u00105\u001a\u0004\u0018\u00010\u0002H\u00c6\u0003\u00a2\u0006\u0004\u00085\u00101J\u0012\u00106\u001a\u0004\u0018\u00010\u0002H\u00c6\u0003\u00a2\u0006\u0004\u00086\u00101J\u0012\u00107\u001a\u0004\u0018\u00010\u0002H\u00c6\u0003\u00a2\u0006\u0004\u00087\u00101J\u0010\u00108\u001a\u00020\nH\u00c6\u0003\u00a2\u0006\u0004\u00088\u00109J\u0012\u0010:\u001a\u0004\u0018\u00010\u0002H\u00c6\u0003\u00a2\u0006\u0004\u0008:\u00101J\u0012\u0010;\u001a\u0004\u0018\u00010\nH\u00c6\u0003\u00a2\u0006\u0004\u0008;\u0010<J\u0012\u0010=\u001a\u0004\u0018\u00010\nH\u00c6\u0003\u00a2\u0006\u0004\u0008=\u0010<J\u0012\u0010>\u001a\u0004\u0018\u00010\nH\u00c6\u0003\u00a2\u0006\u0004\u0008>\u0010<J\u0012\u0010?\u001a\u0004\u0018\u00010\nH\u00c6\u0003\u00a2\u0006\u0004\u0008?\u0010<J\u0010\u0010@\u001a\u00020\u0005H\u00c6\u0003\u00a2\u0006\u0004\u0008@\u00104J\u0012\u0010A\u001a\u0004\u0018\u00010\u0002H\u00c6\u0003\u00a2\u0006\u0004\u0008A\u00101J\u0012\u0010B\u001a\u0004\u0018\u00010\u0005H\u00c6\u0003\u00a2\u0006\u0004\u0008B\u0010CJ\u0012\u0010D\u001a\u0004\u0018\u00010\u0005H\u00c6\u0003\u00a2\u0006\u0004\u0008D\u0010CJ\u0012\u0010E\u001a\u0004\u0018\u00010\u0002H\u00c6\u0003\u00a2\u0006\u0004\u0008E\u00101J\u0012\u0010F\u001a\u0004\u0018\u00010\nH\u00c6\u0003\u00a2\u0006\u0004\u0008F\u0010<J\u0010\u0010G\u001a\u00020\u0017H\u00c6\u0003\u00a2\u0006\u0004\u0008G\u0010/J\u0010\u0010H\u001a\u00020\u0002H\u00c6\u0003\u00a2\u0006\u0004\u0008H\u00101J\u0012\u0010I\u001a\u0004\u0018\u00010\u0002H\u00c6\u0003\u00a2\u0006\u0004\u0008I\u00101J\u0012\u0010J\u001a\u0004\u0018\u00010\u0002H\u00c6\u0003\u00a2\u0006\u0004\u0008J\u00101J\u0012\u0010K\u001a\u0004\u0018\u00010\u0002H\u00c6\u0003\u00a2\u0006\u0004\u0008K\u00101J\u0010\u0010L\u001a\u00020\u0005H\u00c6\u0003\u00a2\u0006\u0004\u0008L\u00104J\u0012\u0010M\u001a\u0004\u0018\u00010\u0005H\u00c6\u0003\u00a2\u0006\u0004\u0008M\u0010CJ\u0012\u0010N\u001a\u0004\u0018\u00010\u0005H\u00c6\u0003\u00a2\u0006\u0004\u0008N\u0010CJ\u0010\u0010O\u001a\u00020\u0017H\u00c6\u0003\u00a2\u0006\u0004\u0008O\u0010/J\u0010\u0010P\u001a\u00020\u0017H\u00c6\u0003\u00a2\u0006\u0004\u0008P\u0010/J\u0010\u0010Q\u001a\u00020\u0017H\u00c6\u0003\u00a2\u0006\u0004\u0008Q\u0010/J\u0012\u0010R\u001a\u0004\u0018\u00010\u0002H\u00c6\u0003\u00a2\u0006\u0004\u0008R\u00101J\u0012\u0010S\u001a\u0004\u0018\u00010\u0002H\u00c6\u0003\u00a2\u0006\u0004\u0008S\u00101J\u0012\u0010T\u001a\u0004\u0018\u00010\u0002H\u00c6\u0003\u00a2\u0006\u0004\u0008T\u00101J\u0012\u0010U\u001a\u0004\u0018\u00010\u0002H\u00c6\u0003\u00a2\u0006\u0004\u0008U\u00101J\u0012\u0010V\u001a\u0004\u0018\u00010\u0002H\u00c6\u0003\u00a2\u0006\u0004\u0008V\u00101J\u0012\u0010W\u001a\u0004\u0018\u00010\u0002H\u00c6\u0003\u00a2\u0006\u0004\u0008W\u00101J\u0012\u0010X\u001a\u0004\u0018\u00010\u0002H\u00c6\u0003\u00a2\u0006\u0004\u0008X\u00101J\u00aa\u0003\u0010Y\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0003\u001a\u00020\u00022\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00022\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u00052\n\u0008\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u00022\n\u0008\u0002\u0010\u0008\u001a\u0004\u0018\u00010\u00022\n\u0008\u0002\u0010\t\u001a\u0004\u0018\u00010\u00022\u0008\u0008\u0002\u0010\u000b\u001a\u00020\n2\n\u0008\u0002\u0010\u000c\u001a\u0004\u0018\u00010\u00022\n\u0008\u0002\u0010\r\u001a\u0004\u0018\u00010\n2\n\u0008\u0002\u0010\u000e\u001a\u0004\u0018\u00010\n2\n\u0008\u0002\u0010\u000f\u001a\u0004\u0018\u00010\n2\n\u0008\u0002\u0010\u0010\u001a\u0004\u0018\u00010\n2\u0008\u0008\u0002\u0010\u0011\u001a\u00020\u00052\n\u0008\u0002\u0010\u0012\u001a\u0004\u0018\u00010\u00022\n\u0008\u0002\u0010\u0013\u001a\u0004\u0018\u00010\u00052\n\u0008\u0002\u0010\u0014\u001a\u0004\u0018\u00010\u00052\n\u0008\u0002\u0010\u0015\u001a\u0004\u0018\u00010\u00022\n\u0008\u0002\u0010\u0016\u001a\u0004\u0018\u00010\n2\u0008\u0008\u0002\u0010\u0018\u001a\u00020\u00172\u0008\u0008\u0002\u0010\u0019\u001a\u00020\u00022\n\u0008\u0002\u0010\u001a\u001a\u0004\u0018\u00010\u00022\n\u0008\u0002\u0010\u001b\u001a\u0004\u0018\u00010\u00022\n\u0008\u0002\u0010\u001c\u001a\u0004\u0018\u00010\u00022\u0008\u0008\u0002\u0010\u001d\u001a\u00020\u00052\n\u0008\u0002\u0010\u001e\u001a\u0004\u0018\u00010\u00052\n\u0008\u0002\u0010\u001f\u001a\u0004\u0018\u00010\u00052\u0008\u0008\u0002\u0010 \u001a\u00020\u00172\u0008\u0008\u0002\u0010!\u001a\u00020\u00172\u0008\u0008\u0002\u0010\"\u001a\u00020\u00172\n\u0008\u0002\u0010#\u001a\u0004\u0018\u00010\u00022\n\u0008\u0002\u0010$\u001a\u0004\u0018\u00010\u00022\n\u0008\u0002\u0010%\u001a\u0004\u0018\u00010\u00022\n\u0008\u0002\u0010&\u001a\u0004\u0018\u00010\u00022\n\u0008\u0002\u0010\'\u001a\u0004\u0018\u00010\u00022\n\u0008\u0002\u0010(\u001a\u0004\u0018\u00010\u00022\n\u0008\u0002\u0010)\u001a\u0004\u0018\u00010\u0002H\u00c6\u0001\u00a2\u0006\u0004\u0008Y\u0010ZJ\u0010\u0010[\u001a\u00020\u0002H\u00d6\u0001\u00a2\u0006\u0004\u0008[\u00101J\u0010\u0010\\\u001a\u00020\nH\u00d6\u0001\u00a2\u0006\u0004\u0008\\\u00109J\u001a\u0010^\u001a\u00020\u00172\u0008\u0010]\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003\u00a2\u0006\u0004\u0008^\u0010_R\u0017\u0010\u0003\u001a\u00020\u00028\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0003\u0010`\u001a\u0004\u0008a\u00101R\"\u0010\u0004\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0004\u0010`\u001a\u0004\u0008b\u00101\"\u0004\u0008c\u0010dR\"\u0010\u0006\u001a\u00020\u00058\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0006\u0010e\u001a\u0004\u0008f\u00104\"\u0004\u0008g\u0010hR\u0019\u0010\u0007\u001a\u0004\u0018\u00010\u00028\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0007\u0010`\u001a\u0004\u0008i\u00101R\u0019\u0010\u0008\u001a\u0004\u0018\u00010\u00028\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0008\u0010`\u001a\u0004\u0008j\u00101R\u0019\u0010\t\u001a\u0004\u0018\u00010\u00028\u0006\u00a2\u0006\u000c\n\u0004\u0008\t\u0010`\u001a\u0004\u0008k\u00101R\u0017\u0010\u000b\u001a\u00020\n8\u0006\u00a2\u0006\u000c\n\u0004\u0008\u000b\u0010l\u001a\u0004\u0008m\u00109R\u0019\u0010\u000c\u001a\u0004\u0018\u00010\u00028\u0006\u00a2\u0006\u000c\n\u0004\u0008\u000c\u0010`\u001a\u0004\u0008n\u00101R\u0019\u0010\r\u001a\u0004\u0018\u00010\n8\u0006\u00a2\u0006\u000c\n\u0004\u0008\r\u0010o\u001a\u0004\u0008p\u0010<R\u0019\u0010\u000e\u001a\u0004\u0018\u00010\n8\u0006\u00a2\u0006\u000c\n\u0004\u0008\u000e\u0010o\u001a\u0004\u0008q\u0010<R\u0019\u0010\u000f\u001a\u0004\u0018\u00010\n8\u0006\u00a2\u0006\u000c\n\u0004\u0008\u000f\u0010o\u001a\u0004\u0008r\u0010<R\u0019\u0010\u0010\u001a\u0004\u0018\u00010\n8\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0010\u0010o\u001a\u0004\u0008s\u0010<R\"\u0010\u0011\u001a\u00020\u00058\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0011\u0010e\u001a\u0004\u0008t\u00104\"\u0004\u0008u\u0010hR$\u0010\u0012\u001a\u0004\u0018\u00010\u00028\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0012\u0010`\u001a\u0004\u0008v\u00101\"\u0004\u0008w\u0010dR$\u0010\u0013\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0013\u0010x\u001a\u0004\u0008y\u0010C\"\u0004\u0008z\u0010{R$\u0010\u0014\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0014\u0010x\u001a\u0004\u0008|\u0010C\"\u0004\u0008}\u0010{R$\u0010\u0015\u001a\u0004\u0018\u00010\u00028\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0015\u0010`\u001a\u0004\u0008~\u00101\"\u0004\u0008\u007f\u0010dR\'\u0010\u0016\u001a\u0004\u0018\u00010\n8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0015\n\u0004\u0008\u0016\u0010o\u001a\u0005\u0008\u0080\u0001\u0010<\"\u0006\u0008\u0081\u0001\u0010\u0082\u0001R&\u0010\u0018\u001a\u00020\u00178\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0016\n\u0005\u0008\u0018\u0010\u0083\u0001\u001a\u0005\u0008\u0084\u0001\u0010/\"\u0006\u0008\u0085\u0001\u0010\u0086\u0001R$\u0010\u0019\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0014\n\u0004\u0008\u0019\u0010`\u001a\u0005\u0008\u0087\u0001\u00101\"\u0005\u0008\u0088\u0001\u0010dR&\u0010\u001a\u001a\u0004\u0018\u00010\u00028\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0014\n\u0004\u0008\u001a\u0010`\u001a\u0005\u0008\u0089\u0001\u00101\"\u0005\u0008\u008a\u0001\u0010dR&\u0010\u001b\u001a\u0004\u0018\u00010\u00028\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0014\n\u0004\u0008\u001b\u0010`\u001a\u0005\u0008\u008b\u0001\u00101\"\u0005\u0008\u008c\u0001\u0010dR&\u0010\u001c\u001a\u0004\u0018\u00010\u00028\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0014\n\u0004\u0008\u001c\u0010`\u001a\u0005\u0008\u008d\u0001\u00101\"\u0005\u0008\u008e\u0001\u0010dR$\u0010\u001d\u001a\u00020\u00058\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0014\n\u0004\u0008\u001d\u0010e\u001a\u0005\u0008\u008f\u0001\u00104\"\u0005\u0008\u0090\u0001\u0010hR&\u0010\u001e\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0014\n\u0004\u0008\u001e\u0010x\u001a\u0005\u0008\u0091\u0001\u0010C\"\u0005\u0008\u0092\u0001\u0010{R&\u0010\u001f\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0014\n\u0004\u0008\u001f\u0010x\u001a\u0005\u0008\u0093\u0001\u0010C\"\u0005\u0008\u0094\u0001\u0010{R&\u0010 \u001a\u00020\u00178\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0016\n\u0005\u0008 \u0010\u0083\u0001\u001a\u0005\u0008\u0095\u0001\u0010/\"\u0006\u0008\u0096\u0001\u0010\u0086\u0001R&\u0010!\u001a\u00020\u00178\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0016\n\u0005\u0008!\u0010\u0083\u0001\u001a\u0005\u0008\u0097\u0001\u0010/\"\u0006\u0008\u0098\u0001\u0010\u0086\u0001R&\u0010\"\u001a\u00020\u00178\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0016\n\u0005\u0008\"\u0010\u0083\u0001\u001a\u0005\u0008\u0099\u0001\u0010/\"\u0006\u0008\u009a\u0001\u0010\u0086\u0001R&\u0010#\u001a\u0004\u0018\u00010\u00028\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0014\n\u0004\u0008#\u0010`\u001a\u0005\u0008\u009b\u0001\u00101\"\u0005\u0008\u009c\u0001\u0010dR&\u0010$\u001a\u0004\u0018\u00010\u00028\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0014\n\u0004\u0008$\u0010`\u001a\u0005\u0008\u009d\u0001\u00101\"\u0005\u0008\u009e\u0001\u0010dR&\u0010%\u001a\u0004\u0018\u00010\u00028\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0014\n\u0004\u0008%\u0010`\u001a\u0005\u0008\u009f\u0001\u00101\"\u0005\u0008\u00a0\u0001\u0010dR&\u0010&\u001a\u0004\u0018\u00010\u00028\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0014\n\u0004\u0008&\u0010`\u001a\u0005\u0008\u00a1\u0001\u00101\"\u0005\u0008\u00a2\u0001\u0010dR&\u0010\'\u001a\u0004\u0018\u00010\u00028\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0014\n\u0004\u0008\'\u0010`\u001a\u0005\u0008\u00a3\u0001\u00101\"\u0005\u0008\u00a4\u0001\u0010dR&\u0010(\u001a\u0004\u0018\u00010\u00028\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0014\n\u0004\u0008(\u0010`\u001a\u0005\u0008\u00a5\u0001\u00101\"\u0005\u0008\u00a6\u0001\u0010dR&\u0010)\u001a\u0004\u0018\u00010\u00028\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0014\n\u0004\u0008)\u0010`\u001a\u0005\u0008\u00a7\u0001\u00101\"\u0005\u0008\u00a8\u0001\u0010d\u00a8\u0006\u00ab\u0001"
    }
    d2 = {
        "Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;",
        "",
        "",
        "collectionId",
        "ugcVideoId",
        "",
        "progress",
        "title",
        "coverUrl",
        "thumbnail",
        "",
        "position",
        "type",
        "cateLev1Id",
        "cateLev2Id",
        "cateLev3Id",
        "cateLev4Id",
        "timeStamp",
        "subtitleSelectId",
        "totalDuration",
        "subjectDurationSeconds",
        "averageHueLight",
        "subjectType",
        "",
        "hasDelete",
        "playMode",
        "downloadUrl",
        "downloadResid",
        "downloadFilePath",
        "downloadSize",
        "lastAdStartTimeStamp",
        "lastAdEndTimeStamp",
        "rewardPlayed",
        "rewardUnlock",
        "rewardFree",
        "ops",
        "uid",
        "userName",
        "userAvatar",
        "description",
        "videoStyle",
        "kidId",
        "<init>",
        "(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;JLjava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/Integer;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/Long;Ljava/lang/Long;ZZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V",
        "toBusinessBean",
        "()Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;",
        "isSingleVideo",
        "()Z",
        "component1",
        "()Ljava/lang/String;",
        "component2",
        "component3",
        "()J",
        "component4",
        "component5",
        "component6",
        "component7",
        "()I",
        "component8",
        "component9",
        "()Ljava/lang/Integer;",
        "component10",
        "component11",
        "component12",
        "component13",
        "component14",
        "component15",
        "()Ljava/lang/Long;",
        "component16",
        "component17",
        "component18",
        "component19",
        "component20",
        "component21",
        "component22",
        "component23",
        "component24",
        "component25",
        "component26",
        "component27",
        "component28",
        "component29",
        "component30",
        "component31",
        "component32",
        "component33",
        "component34",
        "component35",
        "component36",
        "copy",
        "(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;JLjava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/Integer;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/Long;Ljava/lang/Long;ZZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;",
        "toString",
        "hashCode",
        "other",
        "equals",
        "(Ljava/lang/Object;)Z",
        "Ljava/lang/String;",
        "getCollectionId",
        "getUgcVideoId",
        "setUgcVideoId",
        "(Ljava/lang/String;)V",
        "J",
        "getProgress",
        "setProgress",
        "(J)V",
        "getTitle",
        "getCoverUrl",
        "getThumbnail",
        "I",
        "getPosition",
        "getType",
        "Ljava/lang/Integer;",
        "getCateLev1Id",
        "getCateLev2Id",
        "getCateLev3Id",
        "getCateLev4Id",
        "getTimeStamp",
        "setTimeStamp",
        "getSubtitleSelectId",
        "setSubtitleSelectId",
        "Ljava/lang/Long;",
        "getTotalDuration",
        "setTotalDuration",
        "(Ljava/lang/Long;)V",
        "getSubjectDurationSeconds",
        "setSubjectDurationSeconds",
        "getAverageHueLight",
        "setAverageHueLight",
        "getSubjectType",
        "setSubjectType",
        "(Ljava/lang/Integer;)V",
        "Z",
        "getHasDelete",
        "setHasDelete",
        "(Z)V",
        "getPlayMode",
        "setPlayMode",
        "getDownloadUrl",
        "setDownloadUrl",
        "getDownloadResid",
        "setDownloadResid",
        "getDownloadFilePath",
        "setDownloadFilePath",
        "getDownloadSize",
        "setDownloadSize",
        "getLastAdStartTimeStamp",
        "setLastAdStartTimeStamp",
        "getLastAdEndTimeStamp",
        "setLastAdEndTimeStamp",
        "getRewardPlayed",
        "setRewardPlayed",
        "getRewardUnlock",
        "setRewardUnlock",
        "getRewardFree",
        "setRewardFree",
        "getOps",
        "setOps",
        "getUid",
        "setUid",
        "getUserName",
        "setUserName",
        "getUserAvatar",
        "setUserAvatar",
        "getDescription",
        "setDescription",
        "getVideoStyle",
        "setVideoStyle",
        "getKidId",
        "setKidId",
        "Companion",
        "a",
        "BaseLib_psRelease"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final Companion:Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean$a;

.field public static final SINGLE_VIDEO_PREFIX:Ljava/lang/String; = "SINGLE_"


# instance fields
.field private averageHueLight:Ljava/lang/String;

.field private final cateLev1Id:Ljava/lang/Integer;

.field private final cateLev2Id:Ljava/lang/Integer;

.field private final cateLev3Id:Ljava/lang/Integer;

.field private final cateLev4Id:Ljava/lang/Integer;

.field private final collectionId:Ljava/lang/String;

.field private final coverUrl:Ljava/lang/String;

.field private description:Ljava/lang/String;

.field private downloadFilePath:Ljava/lang/String;

.field private downloadResid:Ljava/lang/String;

.field private downloadSize:J

.field private downloadUrl:Ljava/lang/String;

.field private hasDelete:Z

.field private kidId:Ljava/lang/String;

.field private lastAdEndTimeStamp:Ljava/lang/Long;

.field private lastAdStartTimeStamp:Ljava/lang/Long;

.field private ops:Ljava/lang/String;

.field private playMode:Ljava/lang/String;

.field private final position:I

.field private progress:J

.field private rewardFree:Z

.field private rewardPlayed:Z

.field private rewardUnlock:Z

.field private subjectDurationSeconds:Ljava/lang/Long;

.field private subjectType:Ljava/lang/Integer;

.field private subtitleSelectId:Ljava/lang/String;

.field private final thumbnail:Ljava/lang/String;

.field private timeStamp:J

.field private final title:Ljava/lang/String;

.field private totalDuration:Ljava/lang/Long;

.field private final type:Ljava/lang/String;

.field private ugcVideoId:Ljava/lang/String;

.field private uid:Ljava/lang/String;

.field private userAvatar:Ljava/lang/String;

.field private userName:Ljava/lang/String;

.field private videoStyle:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;->Companion:Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean$a;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;JLjava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/Integer;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/Long;Ljava/lang/Long;ZZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object/from16 v3, p22

    const-string v4, "collectionId"

    invoke-static {p1, v4}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "ugcVideoId"

    invoke-static {p2, v4}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "playMode"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v1, v0, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;->collectionId:Ljava/lang/String;

    iput-object v2, v0, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;->ugcVideoId:Ljava/lang/String;

    move-wide v1, p3

    iput-wide v1, v0, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;->progress:J

    move-object v1, p5

    iput-object v1, v0, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;->title:Ljava/lang/String;

    move-object v1, p6

    iput-object v1, v0, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;->coverUrl:Ljava/lang/String;

    move-object v1, p7

    iput-object v1, v0, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;->thumbnail:Ljava/lang/String;

    move v1, p8

    iput v1, v0, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;->position:I

    move-object v1, p9

    iput-object v1, v0, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;->type:Ljava/lang/String;

    move-object v1, p10

    iput-object v1, v0, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;->cateLev1Id:Ljava/lang/Integer;

    move-object/from16 v1, p11

    iput-object v1, v0, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;->cateLev2Id:Ljava/lang/Integer;

    move-object/from16 v1, p12

    iput-object v1, v0, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;->cateLev3Id:Ljava/lang/Integer;

    move-object/from16 v1, p13

    iput-object v1, v0, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;->cateLev4Id:Ljava/lang/Integer;

    move-wide/from16 v1, p14

    iput-wide v1, v0, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;->timeStamp:J

    move-object/from16 v1, p16

    iput-object v1, v0, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;->subtitleSelectId:Ljava/lang/String;

    move-object/from16 v1, p17

    iput-object v1, v0, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;->totalDuration:Ljava/lang/Long;

    move-object/from16 v1, p18

    iput-object v1, v0, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;->subjectDurationSeconds:Ljava/lang/Long;

    move-object/from16 v1, p19

    iput-object v1, v0, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;->averageHueLight:Ljava/lang/String;

    move-object/from16 v1, p20

    iput-object v1, v0, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;->subjectType:Ljava/lang/Integer;

    move/from16 v1, p21

    iput-boolean v1, v0, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;->hasDelete:Z

    iput-object v3, v0, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;->playMode:Ljava/lang/String;

    move-object/from16 v1, p23

    iput-object v1, v0, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;->downloadUrl:Ljava/lang/String;

    move-object/from16 v1, p24

    iput-object v1, v0, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;->downloadResid:Ljava/lang/String;

    move-object/from16 v1, p25

    iput-object v1, v0, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;->downloadFilePath:Ljava/lang/String;

    move-wide/from16 v1, p26

    iput-wide v1, v0, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;->downloadSize:J

    move-object/from16 v1, p28

    iput-object v1, v0, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;->lastAdStartTimeStamp:Ljava/lang/Long;

    move-object/from16 v1, p29

    iput-object v1, v0, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;->lastAdEndTimeStamp:Ljava/lang/Long;

    move/from16 v1, p30

    iput-boolean v1, v0, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;->rewardPlayed:Z

    move/from16 v1, p31

    iput-boolean v1, v0, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;->rewardUnlock:Z

    move/from16 v1, p32

    iput-boolean v1, v0, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;->rewardFree:Z

    move-object/from16 v1, p33

    iput-object v1, v0, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;->ops:Ljava/lang/String;

    move-object/from16 v1, p34

    iput-object v1, v0, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;->uid:Ljava/lang/String;

    move-object/from16 v1, p35

    iput-object v1, v0, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;->userName:Ljava/lang/String;

    move-object/from16 v1, p36

    iput-object v1, v0, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;->userAvatar:Ljava/lang/String;

    move-object/from16 v1, p37

    iput-object v1, v0, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;->description:Ljava/lang/String;

    move-object/from16 v1, p38

    iput-object v1, v0, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;->videoStyle:Ljava/lang/String;

    move-object/from16 v1, p39

    iput-object v1, v0, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;->kidId:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;JLjava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/Integer;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/Long;Ljava/lang/Long;ZZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 37

    move/from16 v0, p40

    and-int/lit8 v1, v0, 0x4

    const-wide/16 v2, 0x0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    if-eqz v1, :cond_0

    move-wide v5, v2

    goto :goto_0

    :cond_0
    move-wide/from16 v5, p3

    :goto_0
    and-int/lit8 v1, v0, 0x8

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    move-object/from16 v1, p5

    :goto_1
    and-int/lit8 v8, v0, 0x10

    if-eqz v8, :cond_2

    const/4 v8, 0x0

    goto :goto_2

    :cond_2
    move-object/from16 v8, p6

    :goto_2
    and-int/lit8 v9, v0, 0x20

    if-eqz v9, :cond_3

    const/4 v9, 0x0

    goto :goto_3

    :cond_3
    move-object/from16 v9, p7

    :goto_3
    and-int/lit8 v10, v0, 0x40

    const/4 v11, 0x0

    if-eqz v10, :cond_4

    move v10, v11

    goto :goto_4

    :cond_4
    move/from16 v10, p8

    :goto_4
    and-int/lit16 v12, v0, 0x80

    if-eqz v12, :cond_5

    const/4 v12, 0x0

    goto :goto_5

    :cond_5
    move-object/from16 v12, p9

    :goto_5
    and-int/lit16 v13, v0, 0x100

    if-eqz v13, :cond_6

    const/4 v13, 0x0

    goto :goto_6

    :cond_6
    move-object/from16 v13, p10

    :goto_6
    and-int/lit16 v14, v0, 0x200

    if-eqz v14, :cond_7

    const/4 v14, 0x0

    goto :goto_7

    :cond_7
    move-object/from16 v14, p11

    :goto_7
    and-int/lit16 v15, v0, 0x400

    if-eqz v15, :cond_8

    const/4 v15, 0x0

    goto :goto_8

    :cond_8
    move-object/from16 v15, p12

    :goto_8
    and-int/lit16 v2, v0, 0x800

    if-eqz v2, :cond_9

    const/4 v2, 0x0

    goto :goto_9

    :cond_9
    move-object/from16 v2, p13

    :goto_9
    and-int/lit16 v3, v0, 0x1000

    if-eqz v3, :cond_a

    const-wide/16 v18, 0x0

    goto :goto_a

    :cond_a
    move-wide/from16 v18, p14

    :goto_a
    and-int/lit16 v3, v0, 0x2000

    if-eqz v3, :cond_b

    const/4 v3, 0x0

    goto :goto_b

    :cond_b
    move-object/from16 v3, p16

    :goto_b
    and-int/lit16 v7, v0, 0x4000

    if-eqz v7, :cond_c

    move-object v7, v4

    goto :goto_c

    :cond_c
    move-object/from16 v7, p17

    :goto_c
    const v20, 0x8000

    and-int v20, v0, v20

    if-eqz v20, :cond_d

    goto :goto_d

    :cond_d
    move-object/from16 v4, p18

    :goto_d
    const/high16 v20, 0x10000

    and-int v20, v0, v20

    if-eqz v20, :cond_e

    const/16 v20, 0x0

    goto :goto_e

    :cond_e
    move-object/from16 v20, p19

    :goto_e
    const/high16 v21, 0x20000

    and-int v21, v0, v21

    if-eqz v21, :cond_f

    const/16 v21, 0x1

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    goto :goto_f

    :cond_f
    move-object/from16 v21, p20

    :goto_f
    const/high16 v22, 0x40000

    and-int v22, v0, v22

    if-eqz v22, :cond_10

    move/from16 v22, v11

    goto :goto_10

    :cond_10
    move/from16 v22, p21

    :goto_10
    const/high16 v23, 0x80000

    and-int v23, v0, v23

    if-eqz v23, :cond_11

    sget-object v23, Lcom/transsion/baselib/utils/PlayMode;->STREAM:Lcom/transsion/baselib/utils/PlayMode;

    invoke-virtual/range {v23 .. v23}, Lcom/transsion/baselib/utils/PlayMode;->getValue()Ljava/lang/String;

    move-result-object v23

    goto :goto_11

    :cond_11
    move-object/from16 v23, p22

    :goto_11
    const/high16 v24, 0x100000

    and-int v24, v0, v24

    if-eqz v24, :cond_12

    const/16 v24, 0x0

    goto :goto_12

    :cond_12
    move-object/from16 v24, p23

    :goto_12
    const/high16 v25, 0x200000

    and-int v25, v0, v25

    if-eqz v25, :cond_13

    const/16 v25, 0x0

    goto :goto_13

    :cond_13
    move-object/from16 v25, p24

    :goto_13
    const/high16 v26, 0x400000

    and-int v26, v0, v26

    if-eqz v26, :cond_14

    const/16 v26, 0x0

    goto :goto_14

    :cond_14
    move-object/from16 v26, p25

    :goto_14
    const/high16 v27, 0x800000

    and-int v27, v0, v27

    if-eqz v27, :cond_15

    const-wide/16 v16, 0x0

    goto :goto_15

    :cond_15
    move-wide/from16 v16, p26

    :goto_15
    const/high16 v27, 0x1000000

    and-int v27, v0, v27

    if-eqz v27, :cond_16

    const/16 v27, 0x0

    goto :goto_16

    :cond_16
    move-object/from16 v27, p28

    :goto_16
    const/high16 v28, 0x2000000

    and-int v28, v0, v28

    if-eqz v28, :cond_17

    const/16 v28, 0x0

    goto :goto_17

    :cond_17
    move-object/from16 v28, p29

    :goto_17
    const/high16 v29, 0x4000000

    and-int v29, v0, v29

    if-eqz v29, :cond_18

    move/from16 v29, v11

    goto :goto_18

    :cond_18
    move/from16 v29, p30

    :goto_18
    const/high16 v30, 0x8000000

    and-int v30, v0, v30

    if-eqz v30, :cond_19

    move/from16 v30, v11

    goto :goto_19

    :cond_19
    move/from16 v30, p31

    :goto_19
    const/high16 v31, 0x10000000

    and-int v31, v0, v31

    if-eqz v31, :cond_1a

    goto :goto_1a

    :cond_1a
    move/from16 v11, p32

    :goto_1a
    const/high16 v31, 0x20000000

    and-int v31, v0, v31

    if-eqz v31, :cond_1b

    const/16 v31, 0x0

    goto :goto_1b

    :cond_1b
    move-object/from16 v31, p33

    :goto_1b
    const/high16 v32, 0x40000000    # 2.0f

    and-int v32, v0, v32

    if-eqz v32, :cond_1c

    const/16 v32, 0x0

    goto :goto_1c

    :cond_1c
    move-object/from16 v32, p34

    :goto_1c
    const/high16 v33, -0x80000000

    and-int v0, v0, v33

    if-eqz v0, :cond_1d

    const/4 v0, 0x0

    goto :goto_1d

    :cond_1d
    move-object/from16 v0, p35

    :goto_1d
    and-int/lit8 v33, p41, 0x1

    if-eqz v33, :cond_1e

    const/16 v33, 0x0

    goto :goto_1e

    :cond_1e
    move-object/from16 v33, p36

    :goto_1e
    and-int/lit8 v34, p41, 0x2

    if-eqz v34, :cond_1f

    const/16 v34, 0x0

    goto :goto_1f

    :cond_1f
    move-object/from16 v34, p37

    :goto_1f
    and-int/lit8 v35, p41, 0x4

    if-eqz v35, :cond_20

    const/16 v35, 0x0

    goto :goto_20

    :cond_20
    move-object/from16 v35, p38

    :goto_20
    and-int/lit8 v36, p41, 0x8

    if-eqz v36, :cond_21

    const/16 v36, 0x0

    goto :goto_21

    :cond_21
    move-object/from16 v36, p39

    :goto_21
    move-object/from16 p3, p0

    move-object/from16 p4, p1

    move-object/from16 p5, p2

    move-wide/from16 p6, v5

    move-object/from16 p8, v1

    move-object/from16 p9, v8

    move-object/from16 p10, v9

    move/from16 p11, v10

    move-object/from16 p12, v12

    move-object/from16 p13, v13

    move-object/from16 p14, v14

    move-object/from16 p15, v15

    move-object/from16 p16, v2

    move-wide/from16 p17, v18

    move-object/from16 p19, v3

    move-object/from16 p20, v7

    move-object/from16 p21, v4

    move-object/from16 p22, v20

    move-object/from16 p23, v21

    move/from16 p24, v22

    move-object/from16 p25, v23

    move-object/from16 p26, v24

    move-object/from16 p27, v25

    move-object/from16 p28, v26

    move-wide/from16 p29, v16

    move-object/from16 p31, v27

    move-object/from16 p32, v28

    move/from16 p33, v29

    move/from16 p34, v30

    move/from16 p35, v11

    move-object/from16 p36, v31

    move-object/from16 p37, v32

    move-object/from16 p38, v0

    move-object/from16 p39, v33

    move-object/from16 p40, v34

    move-object/from16 p41, v35

    move-object/from16 p42, v36

    invoke-direct/range {p3 .. p42}, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;-><init>(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;JLjava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/Integer;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/Long;Ljava/lang/Long;ZZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;JLjava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/Integer;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/Long;Ljava/lang/Long;ZZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/Object;)Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;
    .locals 17

    move-object/from16 v0, p0

    move/from16 v1, p40

    and-int/lit8 v2, v1, 0x1

    if-eqz v2, :cond_0

    iget-object v2, v0, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;->collectionId:Ljava/lang/String;

    goto :goto_0

    :cond_0
    move-object/from16 v2, p1

    :goto_0
    and-int/lit8 v3, v1, 0x2

    if-eqz v3, :cond_1

    iget-object v3, v0, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;->ugcVideoId:Ljava/lang/String;

    goto :goto_1

    :cond_1
    move-object/from16 v3, p2

    :goto_1
    and-int/lit8 v4, v1, 0x4

    if-eqz v4, :cond_2

    iget-wide v4, v0, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;->progress:J

    goto :goto_2

    :cond_2
    move-wide/from16 v4, p3

    :goto_2
    and-int/lit8 v6, v1, 0x8

    if-eqz v6, :cond_3

    iget-object v6, v0, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;->title:Ljava/lang/String;

    goto :goto_3

    :cond_3
    move-object/from16 v6, p5

    :goto_3
    and-int/lit8 v7, v1, 0x10

    if-eqz v7, :cond_4

    iget-object v7, v0, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;->coverUrl:Ljava/lang/String;

    goto :goto_4

    :cond_4
    move-object/from16 v7, p6

    :goto_4
    and-int/lit8 v8, v1, 0x20

    if-eqz v8, :cond_5

    iget-object v8, v0, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;->thumbnail:Ljava/lang/String;

    goto :goto_5

    :cond_5
    move-object/from16 v8, p7

    :goto_5
    and-int/lit8 v9, v1, 0x40

    if-eqz v9, :cond_6

    iget v9, v0, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;->position:I

    goto :goto_6

    :cond_6
    move/from16 v9, p8

    :goto_6
    and-int/lit16 v10, v1, 0x80

    if-eqz v10, :cond_7

    iget-object v10, v0, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;->type:Ljava/lang/String;

    goto :goto_7

    :cond_7
    move-object/from16 v10, p9

    :goto_7
    and-int/lit16 v11, v1, 0x100

    if-eqz v11, :cond_8

    iget-object v11, v0, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;->cateLev1Id:Ljava/lang/Integer;

    goto :goto_8

    :cond_8
    move-object/from16 v11, p10

    :goto_8
    and-int/lit16 v12, v1, 0x200

    if-eqz v12, :cond_9

    iget-object v12, v0, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;->cateLev2Id:Ljava/lang/Integer;

    goto :goto_9

    :cond_9
    move-object/from16 v12, p11

    :goto_9
    and-int/lit16 v13, v1, 0x400

    if-eqz v13, :cond_a

    iget-object v13, v0, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;->cateLev3Id:Ljava/lang/Integer;

    goto :goto_a

    :cond_a
    move-object/from16 v13, p12

    :goto_a
    and-int/lit16 v14, v1, 0x800

    if-eqz v14, :cond_b

    iget-object v14, v0, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;->cateLev4Id:Ljava/lang/Integer;

    goto :goto_b

    :cond_b
    move-object/from16 v14, p13

    :goto_b
    and-int/lit16 v15, v1, 0x1000

    move-object/from16 p13, v14

    if-eqz v15, :cond_c

    iget-wide v14, v0, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;->timeStamp:J

    goto :goto_c

    :cond_c
    move-wide/from16 v14, p14

    :goto_c
    move-wide/from16 p14, v14

    and-int/lit16 v14, v1, 0x2000

    if-eqz v14, :cond_d

    iget-object v14, v0, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;->subtitleSelectId:Ljava/lang/String;

    goto :goto_d

    :cond_d
    move-object/from16 v14, p16

    :goto_d
    and-int/lit16 v15, v1, 0x4000

    if-eqz v15, :cond_e

    iget-object v15, v0, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;->totalDuration:Ljava/lang/Long;

    goto :goto_e

    :cond_e
    move-object/from16 v15, p17

    :goto_e
    const v16, 0x8000

    and-int v16, v1, v16

    move-object/from16 p17, v15

    if-eqz v16, :cond_f

    iget-object v15, v0, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;->subjectDurationSeconds:Ljava/lang/Long;

    goto :goto_f

    :cond_f
    move-object/from16 v15, p18

    :goto_f
    const/high16 v16, 0x10000

    and-int v16, v1, v16

    move-object/from16 p18, v15

    if-eqz v16, :cond_10

    iget-object v15, v0, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;->averageHueLight:Ljava/lang/String;

    goto :goto_10

    :cond_10
    move-object/from16 v15, p19

    :goto_10
    const/high16 v16, 0x20000

    and-int v16, v1, v16

    move-object/from16 p19, v15

    if-eqz v16, :cond_11

    iget-object v15, v0, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;->subjectType:Ljava/lang/Integer;

    goto :goto_11

    :cond_11
    move-object/from16 v15, p20

    :goto_11
    const/high16 v16, 0x40000

    and-int v16, v1, v16

    move-object/from16 p20, v15

    if-eqz v16, :cond_12

    iget-boolean v15, v0, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;->hasDelete:Z

    goto :goto_12

    :cond_12
    move/from16 v15, p21

    :goto_12
    const/high16 v16, 0x80000

    and-int v16, v1, v16

    move/from16 p21, v15

    if-eqz v16, :cond_13

    iget-object v15, v0, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;->playMode:Ljava/lang/String;

    goto :goto_13

    :cond_13
    move-object/from16 v15, p22

    :goto_13
    const/high16 v16, 0x100000

    and-int v16, v1, v16

    move-object/from16 p22, v15

    if-eqz v16, :cond_14

    iget-object v15, v0, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;->downloadUrl:Ljava/lang/String;

    goto :goto_14

    :cond_14
    move-object/from16 v15, p23

    :goto_14
    const/high16 v16, 0x200000

    and-int v16, v1, v16

    move-object/from16 p23, v15

    if-eqz v16, :cond_15

    iget-object v15, v0, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;->downloadResid:Ljava/lang/String;

    goto :goto_15

    :cond_15
    move-object/from16 v15, p24

    :goto_15
    const/high16 v16, 0x400000

    and-int v16, v1, v16

    move-object/from16 p24, v15

    if-eqz v16, :cond_16

    iget-object v15, v0, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;->downloadFilePath:Ljava/lang/String;

    goto :goto_16

    :cond_16
    move-object/from16 v15, p25

    :goto_16
    const/high16 v16, 0x800000

    and-int v16, v1, v16

    move-object/from16 p16, v14

    move-object/from16 p25, v15

    if-eqz v16, :cond_17

    iget-wide v14, v0, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;->downloadSize:J

    goto :goto_17

    :cond_17
    move-wide/from16 v14, p26

    :goto_17
    const/high16 v16, 0x1000000

    and-int v16, v1, v16

    move-wide/from16 p26, v14

    if-eqz v16, :cond_18

    iget-object v14, v0, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;->lastAdStartTimeStamp:Ljava/lang/Long;

    goto :goto_18

    :cond_18
    move-object/from16 v14, p28

    :goto_18
    const/high16 v15, 0x2000000

    and-int/2addr v15, v1

    if-eqz v15, :cond_19

    iget-object v15, v0, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;->lastAdEndTimeStamp:Ljava/lang/Long;

    goto :goto_19

    :cond_19
    move-object/from16 v15, p29

    :goto_19
    const/high16 v16, 0x4000000

    and-int v16, v1, v16

    move-object/from16 p29, v15

    if-eqz v16, :cond_1a

    iget-boolean v15, v0, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;->rewardPlayed:Z

    goto :goto_1a

    :cond_1a
    move/from16 v15, p30

    :goto_1a
    const/high16 v16, 0x8000000

    and-int v16, v1, v16

    move/from16 p30, v15

    if-eqz v16, :cond_1b

    iget-boolean v15, v0, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;->rewardUnlock:Z

    goto :goto_1b

    :cond_1b
    move/from16 v15, p31

    :goto_1b
    const/high16 v16, 0x10000000

    and-int v16, v1, v16

    move/from16 p31, v15

    if-eqz v16, :cond_1c

    iget-boolean v15, v0, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;->rewardFree:Z

    goto :goto_1c

    :cond_1c
    move/from16 v15, p32

    :goto_1c
    const/high16 v16, 0x20000000

    and-int v16, v1, v16

    move/from16 p32, v15

    if-eqz v16, :cond_1d

    iget-object v15, v0, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;->ops:Ljava/lang/String;

    goto :goto_1d

    :cond_1d
    move-object/from16 v15, p33

    :goto_1d
    const/high16 v16, 0x40000000    # 2.0f

    and-int v16, v1, v16

    move-object/from16 p33, v15

    if-eqz v16, :cond_1e

    iget-object v15, v0, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;->uid:Ljava/lang/String;

    goto :goto_1e

    :cond_1e
    move-object/from16 v15, p34

    :goto_1e
    const/high16 v16, -0x80000000

    and-int v1, v1, v16

    if-eqz v1, :cond_1f

    iget-object v1, v0, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;->userName:Ljava/lang/String;

    goto :goto_1f

    :cond_1f
    move-object/from16 v1, p35

    :goto_1f
    and-int/lit8 v16, p41, 0x1

    move-object/from16 p35, v1

    if-eqz v16, :cond_20

    iget-object v1, v0, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;->userAvatar:Ljava/lang/String;

    goto :goto_20

    :cond_20
    move-object/from16 v1, p36

    :goto_20
    and-int/lit8 v16, p41, 0x2

    move-object/from16 p36, v1

    if-eqz v16, :cond_21

    iget-object v1, v0, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;->description:Ljava/lang/String;

    goto :goto_21

    :cond_21
    move-object/from16 v1, p37

    :goto_21
    and-int/lit8 v16, p41, 0x4

    move-object/from16 p37, v1

    if-eqz v16, :cond_22

    iget-object v1, v0, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;->videoStyle:Ljava/lang/String;

    goto :goto_22

    :cond_22
    move-object/from16 v1, p38

    :goto_22
    and-int/lit8 v16, p41, 0x8

    move-object/from16 p38, v1

    if-eqz v16, :cond_23

    iget-object v1, v0, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;->kidId:Ljava/lang/String;

    goto :goto_23

    :cond_23
    move-object/from16 v1, p39

    :goto_23
    move-object/from16 p1, v2

    move-object/from16 p2, v3

    move-wide/from16 p3, v4

    move-object/from16 p5, v6

    move-object/from16 p6, v7

    move-object/from16 p7, v8

    move/from16 p8, v9

    move-object/from16 p9, v10

    move-object/from16 p10, v11

    move-object/from16 p11, v12

    move-object/from16 p12, v13

    move-object/from16 p28, v14

    move-object/from16 p34, v15

    move-object/from16 p39, v1

    invoke-virtual/range {p0 .. p39}, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;->copy(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;JLjava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/Integer;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/Long;Ljava/lang/Long;ZZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final component1()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;->collectionId:Ljava/lang/String;

    return-object v0
.end method

.method public final component10()Ljava/lang/Integer;
    .locals 1

    iget-object v0, p0, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;->cateLev2Id:Ljava/lang/Integer;

    return-object v0
.end method

.method public final component11()Ljava/lang/Integer;
    .locals 1

    iget-object v0, p0, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;->cateLev3Id:Ljava/lang/Integer;

    return-object v0
.end method

.method public final component12()Ljava/lang/Integer;
    .locals 1

    iget-object v0, p0, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;->cateLev4Id:Ljava/lang/Integer;

    return-object v0
.end method

.method public final component13()J
    .locals 2

    iget-wide v0, p0, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;->timeStamp:J

    return-wide v0
.end method

.method public final component14()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;->subtitleSelectId:Ljava/lang/String;

    return-object v0
.end method

.method public final component15()Ljava/lang/Long;
    .locals 1

    iget-object v0, p0, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;->totalDuration:Ljava/lang/Long;

    return-object v0
.end method

.method public final component16()Ljava/lang/Long;
    .locals 1

    iget-object v0, p0, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;->subjectDurationSeconds:Ljava/lang/Long;

    return-object v0
.end method

.method public final component17()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;->averageHueLight:Ljava/lang/String;

    return-object v0
.end method

.method public final component18()Ljava/lang/Integer;
    .locals 1

    iget-object v0, p0, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;->subjectType:Ljava/lang/Integer;

    return-object v0
.end method

.method public final component19()Z
    .locals 1

    iget-boolean v0, p0, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;->hasDelete:Z

    return v0
.end method

.method public final component2()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;->ugcVideoId:Ljava/lang/String;

    return-object v0
.end method

.method public final component20()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;->playMode:Ljava/lang/String;

    return-object v0
.end method

.method public final component21()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;->downloadUrl:Ljava/lang/String;

    return-object v0
.end method

.method public final component22()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;->downloadResid:Ljava/lang/String;

    return-object v0
.end method

.method public final component23()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;->downloadFilePath:Ljava/lang/String;

    return-object v0
.end method

.method public final component24()J
    .locals 2

    iget-wide v0, p0, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;->downloadSize:J

    return-wide v0
.end method

.method public final component25()Ljava/lang/Long;
    .locals 1

    iget-object v0, p0, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;->lastAdStartTimeStamp:Ljava/lang/Long;

    return-object v0
.end method

.method public final component26()Ljava/lang/Long;
    .locals 1

    iget-object v0, p0, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;->lastAdEndTimeStamp:Ljava/lang/Long;

    return-object v0
.end method

.method public final component27()Z
    .locals 1

    iget-boolean v0, p0, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;->rewardPlayed:Z

    return v0
.end method

.method public final component28()Z
    .locals 1

    iget-boolean v0, p0, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;->rewardUnlock:Z

    return v0
.end method

.method public final component29()Z
    .locals 1

    iget-boolean v0, p0, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;->rewardFree:Z

    return v0
.end method

.method public final component3()J
    .locals 2

    iget-wide v0, p0, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;->progress:J

    return-wide v0
.end method

.method public final component30()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;->ops:Ljava/lang/String;

    return-object v0
.end method

.method public final component31()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;->uid:Ljava/lang/String;

    return-object v0
.end method

.method public final component32()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;->userName:Ljava/lang/String;

    return-object v0
.end method

.method public final component33()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;->userAvatar:Ljava/lang/String;

    return-object v0
.end method

.method public final component34()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;->description:Ljava/lang/String;

    return-object v0
.end method

.method public final component35()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;->videoStyle:Ljava/lang/String;

    return-object v0
.end method

.method public final component36()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;->kidId:Ljava/lang/String;

    return-object v0
.end method

.method public final component4()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;->title:Ljava/lang/String;

    return-object v0
.end method

.method public final component5()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;->coverUrl:Ljava/lang/String;

    return-object v0
.end method

.method public final component6()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;->thumbnail:Ljava/lang/String;

    return-object v0
.end method

.method public final component7()I
    .locals 1

    iget v0, p0, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;->position:I

    return v0
.end method

.method public final component8()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;->type:Ljava/lang/String;

    return-object v0
.end method

.method public final component9()Ljava/lang/Integer;
    .locals 1

    iget-object v0, p0, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;->cateLev1Id:Ljava/lang/Integer;

    return-object v0
.end method

.method public final copy(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;JLjava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/Integer;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/Long;Ljava/lang/Long;ZZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;
    .locals 42

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-wide/from16 v3, p3

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move/from16 v8, p8

    move-object/from16 v9, p9

    move-object/from16 v10, p10

    move-object/from16 v11, p11

    move-object/from16 v12, p12

    move-object/from16 v13, p13

    move-wide/from16 v14, p14

    move-object/from16 v16, p16

    move-object/from16 v17, p17

    move-object/from16 v18, p18

    move-object/from16 v19, p19

    move-object/from16 v20, p20

    move/from16 v21, p21

    move-object/from16 v22, p22

    move-object/from16 v23, p23

    move-object/from16 v24, p24

    move-object/from16 v25, p25

    move-wide/from16 v26, p26

    move-object/from16 v28, p28

    move-object/from16 v29, p29

    move/from16 v30, p30

    move/from16 v31, p31

    move/from16 v32, p32

    move-object/from16 v33, p33

    move-object/from16 v34, p34

    move-object/from16 v35, p35

    move-object/from16 v36, p36

    move-object/from16 v37, p37

    move-object/from16 v38, p38

    move-object/from16 v39, p39

    const-string v0, "collectionId"

    move-object/from16 v40, v1

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "ugcVideoId"

    move-object/from16 v1, p2

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "playMode"

    move-object/from16 v1, p22

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v41, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;

    move-object/from16 v0, v41

    move-object/from16 v1, v40

    invoke-direct/range {v0 .. v39}, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;-><init>(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;JLjava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/Integer;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/Long;Ljava/lang/Long;ZZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v41
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;

    iget-object v1, p0, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;->collectionId:Ljava/lang/String;

    iget-object v3, p1, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;->collectionId:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;->ugcVideoId:Ljava/lang/String;

    iget-object v3, p1, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;->ugcVideoId:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-wide v3, p0, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;->progress:J

    iget-wide v5, p1, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;->progress:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;->title:Ljava/lang/String;

    iget-object v3, p1, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;->title:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    :cond_5
    iget-object v1, p0, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;->coverUrl:Ljava/lang/String;

    iget-object v3, p1, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;->coverUrl:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    return v2

    :cond_6
    iget-object v1, p0, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;->thumbnail:Ljava/lang/String;

    iget-object v3, p1, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;->thumbnail:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    return v2

    :cond_7
    iget v1, p0, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;->position:I

    iget v3, p1, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;->position:I

    if-eq v1, v3, :cond_8

    return v2

    :cond_8
    iget-object v1, p0, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;->type:Ljava/lang/String;

    iget-object v3, p1, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;->type:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    return v2

    :cond_9
    iget-object v1, p0, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;->cateLev1Id:Ljava/lang/Integer;

    iget-object v3, p1, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;->cateLev1Id:Ljava/lang/Integer;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    return v2

    :cond_a
    iget-object v1, p0, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;->cateLev2Id:Ljava/lang/Integer;

    iget-object v3, p1, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;->cateLev2Id:Ljava/lang/Integer;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b

    return v2

    :cond_b
    iget-object v1, p0, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;->cateLev3Id:Ljava/lang/Integer;

    iget-object v3, p1, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;->cateLev3Id:Ljava/lang/Integer;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c

    return v2

    :cond_c
    iget-object v1, p0, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;->cateLev4Id:Ljava/lang/Integer;

    iget-object v3, p1, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;->cateLev4Id:Ljava/lang/Integer;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_d

    return v2

    :cond_d
    iget-wide v3, p0, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;->timeStamp:J

    iget-wide v5, p1, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;->timeStamp:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_e

    return v2

    :cond_e
    iget-object v1, p0, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;->subtitleSelectId:Ljava/lang/String;

    iget-object v3, p1, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;->subtitleSelectId:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_f

    return v2

    :cond_f
    iget-object v1, p0, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;->totalDuration:Ljava/lang/Long;

    iget-object v3, p1, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;->totalDuration:Ljava/lang/Long;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_10

    return v2

    :cond_10
    iget-object v1, p0, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;->subjectDurationSeconds:Ljava/lang/Long;

    iget-object v3, p1, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;->subjectDurationSeconds:Ljava/lang/Long;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_11

    return v2

    :cond_11
    iget-object v1, p0, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;->averageHueLight:Ljava/lang/String;

    iget-object v3, p1, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;->averageHueLight:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_12

    return v2

    :cond_12
    iget-object v1, p0, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;->subjectType:Ljava/lang/Integer;

    iget-object v3, p1, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;->subjectType:Ljava/lang/Integer;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_13

    return v2

    :cond_13
    iget-boolean v1, p0, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;->hasDelete:Z

    iget-boolean v3, p1, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;->hasDelete:Z

    if-eq v1, v3, :cond_14

    return v2

    :cond_14
    iget-object v1, p0, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;->playMode:Ljava/lang/String;

    iget-object v3, p1, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;->playMode:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_15

    return v2

    :cond_15
    iget-object v1, p0, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;->downloadUrl:Ljava/lang/String;

    iget-object v3, p1, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;->downloadUrl:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_16

    return v2

    :cond_16
    iget-object v1, p0, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;->downloadResid:Ljava/lang/String;

    iget-object v3, p1, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;->downloadResid:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_17

    return v2

    :cond_17
    iget-object v1, p0, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;->downloadFilePath:Ljava/lang/String;

    iget-object v3, p1, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;->downloadFilePath:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_18

    return v2

    :cond_18
    iget-wide v3, p0, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;->downloadSize:J

    iget-wide v5, p1, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;->downloadSize:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_19

    return v2

    :cond_19
    iget-object v1, p0, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;->lastAdStartTimeStamp:Ljava/lang/Long;

    iget-object v3, p1, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;->lastAdStartTimeStamp:Ljava/lang/Long;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1a

    return v2

    :cond_1a
    iget-object v1, p0, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;->lastAdEndTimeStamp:Ljava/lang/Long;

    iget-object v3, p1, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;->lastAdEndTimeStamp:Ljava/lang/Long;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1b

    return v2

    :cond_1b
    iget-boolean v1, p0, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;->rewardPlayed:Z

    iget-boolean v3, p1, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;->rewardPlayed:Z

    if-eq v1, v3, :cond_1c

    return v2

    :cond_1c
    iget-boolean v1, p0, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;->rewardUnlock:Z

    iget-boolean v3, p1, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;->rewardUnlock:Z

    if-eq v1, v3, :cond_1d

    return v2

    :cond_1d
    iget-boolean v1, p0, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;->rewardFree:Z

    iget-boolean v3, p1, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;->rewardFree:Z

    if-eq v1, v3, :cond_1e

    return v2

    :cond_1e
    iget-object v1, p0, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;->ops:Ljava/lang/String;

    iget-object v3, p1, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;->ops:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1f

    return v2

    :cond_1f
    iget-object v1, p0, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;->uid:Ljava/lang/String;

    iget-object v3, p1, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;->uid:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_20

    return v2

    :cond_20
    iget-object v1, p0, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;->userName:Ljava/lang/String;

    iget-object v3, p1, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;->userName:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_21

    return v2

    :cond_21
    iget-object v1, p0, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;->userAvatar:Ljava/lang/String;

    iget-object v3, p1, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;->userAvatar:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_22

    return v2

    :cond_22
    iget-object v1, p0, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;->description:Ljava/lang/String;

    iget-object v3, p1, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;->description:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_23

    return v2

    :cond_23
    iget-object v1, p0, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;->videoStyle:Ljava/lang/String;

    iget-object v3, p1, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;->videoStyle:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_24

    return v2

    :cond_24
    iget-object v1, p0, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;->kidId:Ljava/lang/String;

    iget-object p1, p1, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;->kidId:Ljava/lang/String;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_25

    return v2

    :cond_25
    return v0
.end method

.method public final getAverageHueLight()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;->averageHueLight:Ljava/lang/String;

    return-object v0
.end method

.method public final getCateLev1Id()Ljava/lang/Integer;
    .locals 1

    iget-object v0, p0, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;->cateLev1Id:Ljava/lang/Integer;

    return-object v0
.end method

.method public final getCateLev2Id()Ljava/lang/Integer;
    .locals 1

    iget-object v0, p0, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;->cateLev2Id:Ljava/lang/Integer;

    return-object v0
.end method

.method public final getCateLev3Id()Ljava/lang/Integer;
    .locals 1

    iget-object v0, p0, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;->cateLev3Id:Ljava/lang/Integer;

    return-object v0
.end method

.method public final getCateLev4Id()Ljava/lang/Integer;
    .locals 1

    iget-object v0, p0, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;->cateLev4Id:Ljava/lang/Integer;

    return-object v0
.end method

.method public final getCollectionId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;->collectionId:Ljava/lang/String;

    return-object v0
.end method

.method public final getCoverUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;->coverUrl:Ljava/lang/String;

    return-object v0
.end method

.method public final getDescription()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;->description:Ljava/lang/String;

    return-object v0
.end method

.method public final getDownloadFilePath()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;->downloadFilePath:Ljava/lang/String;

    return-object v0
.end method

.method public final getDownloadResid()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;->downloadResid:Ljava/lang/String;

    return-object v0
.end method

.method public final getDownloadSize()J
    .locals 2

    iget-wide v0, p0, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;->downloadSize:J

    return-wide v0
.end method

.method public final getDownloadUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;->downloadUrl:Ljava/lang/String;

    return-object v0
.end method

.method public final getHasDelete()Z
    .locals 1

    iget-boolean v0, p0, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;->hasDelete:Z

    return v0
.end method

.method public final getKidId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;->kidId:Ljava/lang/String;

    return-object v0
.end method

.method public final getLastAdEndTimeStamp()Ljava/lang/Long;
    .locals 1

    iget-object v0, p0, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;->lastAdEndTimeStamp:Ljava/lang/Long;

    return-object v0
.end method

.method public final getLastAdStartTimeStamp()Ljava/lang/Long;
    .locals 1

    iget-object v0, p0, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;->lastAdStartTimeStamp:Ljava/lang/Long;

    return-object v0
.end method

.method public final getOps()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;->ops:Ljava/lang/String;

    return-object v0
.end method

.method public final getPlayMode()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;->playMode:Ljava/lang/String;

    return-object v0
.end method

.method public final getPosition()I
    .locals 1

    iget v0, p0, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;->position:I

    return v0
.end method

.method public final getProgress()J
    .locals 2

    iget-wide v0, p0, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;->progress:J

    return-wide v0
.end method

.method public final getRewardFree()Z
    .locals 1

    iget-boolean v0, p0, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;->rewardFree:Z

    return v0
.end method

.method public final getRewardPlayed()Z
    .locals 1

    iget-boolean v0, p0, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;->rewardPlayed:Z

    return v0
.end method

.method public final getRewardUnlock()Z
    .locals 1

    iget-boolean v0, p0, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;->rewardUnlock:Z

    return v0
.end method

.method public final getSubjectDurationSeconds()Ljava/lang/Long;
    .locals 1

    iget-object v0, p0, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;->subjectDurationSeconds:Ljava/lang/Long;

    return-object v0
.end method

.method public final getSubjectType()Ljava/lang/Integer;
    .locals 1

    iget-object v0, p0, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;->subjectType:Ljava/lang/Integer;

    return-object v0
.end method

.method public final getSubtitleSelectId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;->subtitleSelectId:Ljava/lang/String;

    return-object v0
.end method

.method public final getThumbnail()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;->thumbnail:Ljava/lang/String;

    return-object v0
.end method

.method public final getTimeStamp()J
    .locals 2

    iget-wide v0, p0, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;->timeStamp:J

    return-wide v0
.end method

.method public final getTitle()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;->title:Ljava/lang/String;

    return-object v0
.end method

.method public final getTotalDuration()Ljava/lang/Long;
    .locals 1

    iget-object v0, p0, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;->totalDuration:Ljava/lang/Long;

    return-object v0
.end method

.method public final getType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;->type:Ljava/lang/String;

    return-object v0
.end method

.method public final getUgcVideoId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;->ugcVideoId:Ljava/lang/String;

    return-object v0
.end method

.method public final getUid()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;->uid:Ljava/lang/String;

    return-object v0
.end method

.method public final getUserAvatar()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;->userAvatar:Ljava/lang/String;

    return-object v0
.end method

.method public final getUserName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;->userName:Ljava/lang/String;

    return-object v0
.end method

.method public final getVideoStyle()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;->videoStyle:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 5

    iget-object v0, p0, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;->collectionId:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;->ugcVideoId:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;->progress:J

    invoke-static {v1, v2}, Landroidx/collection/s;->a(J)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;->title:Ljava/lang/String;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;->coverUrl:Ljava/lang/String;

    if-nez v1, :cond_1

    move v1, v2

    goto :goto_1

    :cond_1
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_1
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;->thumbnail:Ljava/lang/String;

    if-nez v1, :cond_2

    move v1, v2

    goto :goto_2

    :cond_2
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_2
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;->position:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;->type:Ljava/lang/String;

    if-nez v1, :cond_3

    move v1, v2

    goto :goto_3

    :cond_3
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_3
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;->cateLev1Id:Ljava/lang/Integer;

    if-nez v1, :cond_4

    move v1, v2

    goto :goto_4

    :cond_4
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_4
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;->cateLev2Id:Ljava/lang/Integer;

    if-nez v1, :cond_5

    move v1, v2

    goto :goto_5

    :cond_5
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_5
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;->cateLev3Id:Ljava/lang/Integer;

    if-nez v1, :cond_6

    move v1, v2

    goto :goto_6

    :cond_6
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_6
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;->cateLev4Id:Ljava/lang/Integer;

    if-nez v1, :cond_7

    move v1, v2

    goto :goto_7

    :cond_7
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_7
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v3, p0, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;->timeStamp:J

    invoke-static {v3, v4}, Landroidx/collection/s;->a(J)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;->subtitleSelectId:Ljava/lang/String;

    if-nez v1, :cond_8

    move v1, v2

    goto :goto_8

    :cond_8
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_8
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;->totalDuration:Ljava/lang/Long;

    if-nez v1, :cond_9

    move v1, v2

    goto :goto_9

    :cond_9
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_9
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;->subjectDurationSeconds:Ljava/lang/Long;

    if-nez v1, :cond_a

    move v1, v2

    goto :goto_a

    :cond_a
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_a
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;->averageHueLight:Ljava/lang/String;

    if-nez v1, :cond_b

    move v1, v2

    goto :goto_b

    :cond_b
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_b
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;->subjectType:Ljava/lang/Integer;

    if-nez v1, :cond_c

    move v1, v2

    goto :goto_c

    :cond_c
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_c
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;->hasDelete:Z

    invoke-static {v1}, Landroidx/compose/foundation/e;->a(Z)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;->playMode:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;->downloadUrl:Ljava/lang/String;

    if-nez v1, :cond_d

    move v1, v2

    goto :goto_d

    :cond_d
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_d
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;->downloadResid:Ljava/lang/String;

    if-nez v1, :cond_e

    move v1, v2

    goto :goto_e

    :cond_e
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_e
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;->downloadFilePath:Ljava/lang/String;

    if-nez v1, :cond_f

    move v1, v2

    goto :goto_f

    :cond_f
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_f
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v3, p0, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;->downloadSize:J

    invoke-static {v3, v4}, Landroidx/collection/s;->a(J)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;->lastAdStartTimeStamp:Ljava/lang/Long;

    if-nez v1, :cond_10

    move v1, v2

    goto :goto_10

    :cond_10
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_10
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;->lastAdEndTimeStamp:Ljava/lang/Long;

    if-nez v1, :cond_11

    move v1, v2

    goto :goto_11

    :cond_11
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_11
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;->rewardPlayed:Z

    invoke-static {v1}, Landroidx/compose/foundation/e;->a(Z)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;->rewardUnlock:Z

    invoke-static {v1}, Landroidx/compose/foundation/e;->a(Z)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;->rewardFree:Z

    invoke-static {v1}, Landroidx/compose/foundation/e;->a(Z)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;->ops:Ljava/lang/String;

    if-nez v1, :cond_12

    move v1, v2

    goto :goto_12

    :cond_12
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_12
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;->uid:Ljava/lang/String;

    if-nez v1, :cond_13

    move v1, v2

    goto :goto_13

    :cond_13
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_13
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;->userName:Ljava/lang/String;

    if-nez v1, :cond_14

    move v1, v2

    goto :goto_14

    :cond_14
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_14
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;->userAvatar:Ljava/lang/String;

    if-nez v1, :cond_15

    move v1, v2

    goto :goto_15

    :cond_15
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_15
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;->description:Ljava/lang/String;

    if-nez v1, :cond_16

    move v1, v2

    goto :goto_16

    :cond_16
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_16
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;->videoStyle:Ljava/lang/String;

    if-nez v1, :cond_17

    move v1, v2

    goto :goto_17

    :cond_17
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_17
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;->kidId:Ljava/lang/String;

    if-nez v1, :cond_18

    goto :goto_18

    :cond_18
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_18
    add-int/2addr v0, v2

    return v0
.end method

.method public final isSingleVideo()Z
    .locals 5

    iget-object v0, p0, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;->collectionId:Ljava/lang/String;

    const/4 v1, 0x2

    const/4 v2, 0x0

    const-string v3, "SINGLE_"

    const/4 v4, 0x0

    invoke-static {v0, v3, v4, v1, v2}, Lkotlin/text/StringsKt;->W(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final setAverageHueLight(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;->averageHueLight:Ljava/lang/String;

    return-void
.end method

.method public final setDescription(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;->description:Ljava/lang/String;

    return-void
.end method

.method public final setDownloadFilePath(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;->downloadFilePath:Ljava/lang/String;

    return-void
.end method

.method public final setDownloadResid(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;->downloadResid:Ljava/lang/String;

    return-void
.end method

.method public final setDownloadSize(J)V
    .locals 0

    iput-wide p1, p0, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;->downloadSize:J

    return-void
.end method

.method public final setDownloadUrl(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;->downloadUrl:Ljava/lang/String;

    return-void
.end method

.method public final setHasDelete(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;->hasDelete:Z

    return-void
.end method

.method public final setKidId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;->kidId:Ljava/lang/String;

    return-void
.end method

.method public final setLastAdEndTimeStamp(Ljava/lang/Long;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;->lastAdEndTimeStamp:Ljava/lang/Long;

    return-void
.end method

.method public final setLastAdStartTimeStamp(Ljava/lang/Long;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;->lastAdStartTimeStamp:Ljava/lang/Long;

    return-void
.end method

.method public final setOps(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;->ops:Ljava/lang/String;

    return-void
.end method

.method public final setPlayMode(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;->playMode:Ljava/lang/String;

    return-void
.end method

.method public final setProgress(J)V
    .locals 0

    iput-wide p1, p0, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;->progress:J

    return-void
.end method

.method public final setRewardFree(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;->rewardFree:Z

    return-void
.end method

.method public final setRewardPlayed(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;->rewardPlayed:Z

    return-void
.end method

.method public final setRewardUnlock(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;->rewardUnlock:Z

    return-void
.end method

.method public final setSubjectDurationSeconds(Ljava/lang/Long;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;->subjectDurationSeconds:Ljava/lang/Long;

    return-void
.end method

.method public final setSubjectType(Ljava/lang/Integer;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;->subjectType:Ljava/lang/Integer;

    return-void
.end method

.method public final setSubtitleSelectId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;->subtitleSelectId:Ljava/lang/String;

    return-void
.end method

.method public final setTimeStamp(J)V
    .locals 0

    iput-wide p1, p0, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;->timeStamp:J

    return-void
.end method

.method public final setTotalDuration(Ljava/lang/Long;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;->totalDuration:Ljava/lang/Long;

    return-void
.end method

.method public final setUgcVideoId(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;->ugcVideoId:Ljava/lang/String;

    return-void
.end method

.method public final setUid(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;->uid:Ljava/lang/String;

    return-void
.end method

.method public final setUserAvatar(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;->userAvatar:Ljava/lang/String;

    return-void
.end method

.method public final setUserName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;->userName:Ljava/lang/String;

    return-void
.end method

.method public final setVideoStyle(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;->videoStyle:Ljava/lang/String;

    return-void
.end method

.method public final toBusinessBean()Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;
    .locals 44

    move-object/from16 v1, p0

    iget-object v0, v1, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;->collectionId:Ljava/lang/String;

    const/4 v2, 0x2

    const/4 v3, 0x0

    const-string v4, "SINGLE_"

    const/4 v5, 0x0

    invoke-static {v0, v4, v5, v2, v3}, Lkotlin/text/StringsKt;->W(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, ""

    :goto_0
    move-object/from16 v43, v0

    goto :goto_1

    :cond_0
    iget-object v0, v1, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;->collectionId:Ljava/lang/String;

    goto :goto_0

    :goto_1
    const/16 v41, 0xf

    const/16 v42, 0x0

    const/4 v2, 0x0

    const-wide/16 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const-wide/16 v14, 0x0

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

    const-wide/16 v26, 0x0

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

    const/16 v40, -0x2

    move-object/from16 v0, p0

    move-object/from16 v1, v43

    invoke-static/range {v0 .. v42}, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;->copy$default(Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;JLjava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/Integer;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/Long;Ljava/lang/Long;ZZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/Object;)Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 41

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;->collectionId:Ljava/lang/String;

    iget-object v2, v0, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;->ugcVideoId:Ljava/lang/String;

    iget-wide v3, v0, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;->progress:J

    iget-object v5, v0, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;->title:Ljava/lang/String;

    iget-object v6, v0, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;->coverUrl:Ljava/lang/String;

    iget-object v7, v0, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;->thumbnail:Ljava/lang/String;

    iget v8, v0, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;->position:I

    iget-object v9, v0, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;->type:Ljava/lang/String;

    iget-object v10, v0, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;->cateLev1Id:Ljava/lang/Integer;

    iget-object v11, v0, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;->cateLev2Id:Ljava/lang/Integer;

    iget-object v12, v0, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;->cateLev3Id:Ljava/lang/Integer;

    iget-object v13, v0, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;->cateLev4Id:Ljava/lang/Integer;

    iget-wide v14, v0, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;->timeStamp:J

    move-wide/from16 v16, v14

    iget-object v14, v0, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;->subtitleSelectId:Ljava/lang/String;

    iget-object v15, v0, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;->totalDuration:Ljava/lang/Long;

    move-object/from16 v18, v15

    iget-object v15, v0, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;->subjectDurationSeconds:Ljava/lang/Long;

    move-object/from16 v19, v15

    iget-object v15, v0, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;->averageHueLight:Ljava/lang/String;

    move-object/from16 v20, v15

    iget-object v15, v0, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;->subjectType:Ljava/lang/Integer;

    move-object/from16 v21, v15

    iget-boolean v15, v0, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;->hasDelete:Z

    move/from16 v22, v15

    iget-object v15, v0, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;->playMode:Ljava/lang/String;

    move-object/from16 v23, v15

    iget-object v15, v0, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;->downloadUrl:Ljava/lang/String;

    move-object/from16 v24, v15

    iget-object v15, v0, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;->downloadResid:Ljava/lang/String;

    move-object/from16 v25, v15

    iget-object v15, v0, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;->downloadFilePath:Ljava/lang/String;

    move-object/from16 v26, v14

    move-object/from16 v27, v15

    iget-wide v14, v0, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;->downloadSize:J

    move-wide/from16 v28, v14

    iget-object v14, v0, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;->lastAdStartTimeStamp:Ljava/lang/Long;

    iget-object v15, v0, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;->lastAdEndTimeStamp:Ljava/lang/Long;

    move-object/from16 v30, v15

    iget-boolean v15, v0, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;->rewardPlayed:Z

    move/from16 v31, v15

    iget-boolean v15, v0, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;->rewardUnlock:Z

    move/from16 v32, v15

    iget-boolean v15, v0, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;->rewardFree:Z

    move/from16 v33, v15

    iget-object v15, v0, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;->ops:Ljava/lang/String;

    move-object/from16 v34, v15

    iget-object v15, v0, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;->uid:Ljava/lang/String;

    move-object/from16 v35, v15

    iget-object v15, v0, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;->userName:Ljava/lang/String;

    move-object/from16 v36, v15

    iget-object v15, v0, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;->userAvatar:Ljava/lang/String;

    move-object/from16 v37, v15

    iget-object v15, v0, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;->description:Ljava/lang/String;

    move-object/from16 v38, v15

    iget-object v15, v0, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;->videoStyle:Ljava/lang/String;

    move-object/from16 v39, v15

    iget-object v15, v0, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;->kidId:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v40, v15

    const-string v15, "UGCVideoDetailPlayBean(collectionId="

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", ugcVideoId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", progress="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", title="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", coverUrl="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", thumbnail="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", position="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", cateLev1Id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", cateLev2Id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", cateLev3Id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", cateLev4Id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", timeStamp="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v1, v16

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", subtitleSelectId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", totalDuration="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", subjectDurationSeconds="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", averageHueLight="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", subjectType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", hasDelete="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", playMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", downloadUrl="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", downloadResid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", downloadFilePath="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", downloadSize="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v1, v28

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", lastAdStartTimeStamp="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", lastAdEndTimeStamp="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", rewardPlayed="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", rewardUnlock="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", rewardFree="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", ops="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", uid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", userName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", userAvatar="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", description="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", videoStyle="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", kidId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
