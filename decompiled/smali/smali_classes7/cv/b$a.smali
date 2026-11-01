.class Lcv/b$a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/transsion/transfer/androidasync/future/g;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcv/b;->r(Lcom/transsion/transfer/androidasync/p;Lbv/a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lbv/a;

.field final synthetic b:Lcv/b;


# direct methods
.method constructor <init>(Lcv/b;Lbv/a;)V
    .locals 0

    iput-object p1, p0, Lcv/b$a;->b:Lcv/b;

    iput-object p2, p0, Lcv/b$a;->a:Lbv/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Exception;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Lorg/json/JSONObject;

    invoke-virtual {p0, p1, p2}, Lcv/b$a;->b(Ljava/lang/Exception;Lorg/json/JSONObject;)V

    return-void
.end method

.method public b(Ljava/lang/Exception;Lorg/json/JSONObject;)V
    .locals 1

    iget-object v0, p0, Lcv/b$a;->b:Lcv/b;

    iput-object p2, v0, Lcv/b;->b:Lorg/json/JSONObject;

    iget-object p2, p0, Lcv/b$a;->a:Lbv/a;

    invoke-interface {p2, p1}, Lbv/a;->g(Ljava/lang/Exception;)V

    return-void
.end method
