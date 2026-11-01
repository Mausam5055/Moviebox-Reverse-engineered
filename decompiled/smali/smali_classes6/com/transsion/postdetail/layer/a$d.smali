.class public final Lcom/transsion/postdetail/layer/a$d;
.super Ljava/lang/Object;

# interfaces
.implements Lvo/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/postdetail/layer/a;->h(Lcom/transsion/postdetail/layer/listener/LayerFlag;[Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/transsion/postdetail/layer/a;

.field final synthetic b:Lcom/transsion/postdetail/layer/listener/LayerFlag;

.field final synthetic c:[Ljava/lang/Object;


# direct methods
.method constructor <init>(Lcom/transsion/postdetail/layer/a;Lcom/transsion/postdetail/layer/listener/LayerFlag;[Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/postdetail/layer/a$d;->a:Lcom/transsion/postdetail/layer/a;

    iput-object p2, p0, Lcom/transsion/postdetail/layer/a$d;->b:Lcom/transsion/postdetail/layer/listener/LayerFlag;

    iput-object p3, p0, Lcom/transsion/postdetail/layer/a$d;->c:[Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)Z
    .locals 1

    const-string v0, "data"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    instance-of p1, p1, Lvo/d;

    return p1
.end method

.method public bridge synthetic b(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lvo/d;

    invoke-virtual {p0, p1}, Lcom/transsion/postdetail/layer/a$d;->c(Lvo/d;)V

    return-void
.end method

.method public c(Lvo/d;)V
    .locals 4

    const-string v0, "listener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/transsion/postdetail/layer/a$d;->a:Lcom/transsion/postdetail/layer/a;

    iget-object v1, p0, Lcom/transsion/postdetail/layer/a$d;->b:Lcom/transsion/postdetail/layer/listener/LayerFlag;

    iget-object v2, p0, Lcom/transsion/postdetail/layer/a$d;->c:[Ljava/lang/Object;

    array-length v3, v2

    invoke-static {v2, v3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v2

    invoke-static {v0, p1, v1, v2}, Lcom/transsion/postdetail/layer/a;->b(Lcom/transsion/postdetail/layer/a;Lvo/d;Lcom/transsion/postdetail/layer/listener/LayerFlag;[Ljava/lang/Object;)V

    return-void
.end method
