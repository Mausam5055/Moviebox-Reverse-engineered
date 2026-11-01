.class public final synthetic Llj/h;
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

    iput-object p1, p0, Llj/h;->a:Ljava/lang/String;

    iput p2, p0, Llj/h;->b:I

    iput p3, p0, Llj/h;->c:I

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Llj/h;->a:Ljava/lang/String;

    iget v1, p0, Llj/h;->b:I

    iget v2, p0, Llj/h;->c:I

    check-cast p1, Lz3/b;

    invoke-static {v0, v1, v2, p1}, Llj/l0;->W(Ljava/lang/String;IILz3/b;)Lcom/transsion/baselib/db/download/DownloadBean;

    move-result-object p1

    return-object p1
.end method
