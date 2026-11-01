.class public final synthetic Lcom/transsion/baselib/db/video/f;
.super Ljava/lang/Object;

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic a:Ljava/lang/String;

.field public final synthetic b:I

.field public final synthetic c:I


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/baselib/db/video/f;->a:Ljava/lang/String;

    iput p2, p0, Lcom/transsion/baselib/db/video/f;->b:I

    iput p3, p0, Lcom/transsion/baselib/db/video/f;->c:I

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lcom/transsion/baselib/db/video/f;->a:Ljava/lang/String;

    iget v1, p0, Lcom/transsion/baselib/db/video/f;->b:I

    iget v2, p0, Lcom/transsion/baselib/db/video/f;->c:I

    check-cast p1, Lz3/b;

    invoke-static {v0, v1, v2, p1}, Lcom/transsion/baselib/db/video/h;->e(Ljava/lang/String;IILz3/b;)Lcom/transsion/baselib/db/video/PlaybackRecordTable;

    move-result-object p1

    return-object p1
.end method
