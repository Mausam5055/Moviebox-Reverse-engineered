.class public final synthetic Lcom/transsion/baselib/db/video/m0;
.super Ljava/lang/Object;

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic a:J

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:J

.field public final synthetic d:I

.field public final synthetic e:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(JLjava/lang/String;JILjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/transsion/baselib/db/video/m0;->a:J

    iput-object p3, p0, Lcom/transsion/baselib/db/video/m0;->b:Ljava/lang/String;

    iput-wide p4, p0, Lcom/transsion/baselib/db/video/m0;->c:J

    iput p6, p0, Lcom/transsion/baselib/db/video/m0;->d:I

    iput-object p7, p0, Lcom/transsion/baselib/db/video/m0;->e:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    iget-wide v0, p0, Lcom/transsion/baselib/db/video/m0;->a:J

    iget-object v2, p0, Lcom/transsion/baselib/db/video/m0;->b:Ljava/lang/String;

    iget-wide v3, p0, Lcom/transsion/baselib/db/video/m0;->c:J

    iget v5, p0, Lcom/transsion/baselib/db/video/m0;->d:I

    iget-object v6, p0, Lcom/transsion/baselib/db/video/m0;->e:Ljava/lang/String;

    move-object v7, p1

    check-cast v7, Lz3/b;

    invoke-static/range {v0 .. v7}, Lcom/transsion/baselib/db/video/n0;->A(JLjava/lang/String;JILjava/lang/String;Lz3/b;)Lkotlin/Unit;

    move-result-object p1

    return-object p1
.end method
