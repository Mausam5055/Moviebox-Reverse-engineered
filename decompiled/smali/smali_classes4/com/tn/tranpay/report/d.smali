.class public final synthetic Lcom/tn/tranpay/report/d;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Ljava/lang/String;

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:Ljava/lang/String;

.field public final synthetic d:Ljava/util/Map;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/tn/tranpay/report/d;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/tn/tranpay/report/d;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/tn/tranpay/report/d;->c:Ljava/lang/String;

    iput-object p4, p0, Lcom/tn/tranpay/report/d;->d:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/tn/tranpay/report/d;->a:Ljava/lang/String;

    iget-object v1, p0, Lcom/tn/tranpay/report/d;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/tn/tranpay/report/d;->c:Ljava/lang/String;

    iget-object v3, p0, Lcom/tn/tranpay/report/d;->d:Ljava/util/Map;

    invoke-static {v0, v1, v2, v3}, Lcom/tn/tranpay/report/e;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method
