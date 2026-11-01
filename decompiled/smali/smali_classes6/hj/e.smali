.class public final synthetic Lhj/e;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Ljava/util/Map;

.field public final synthetic b:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Ljava/util/Map;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lhj/e;->a:Ljava/util/Map;

    iput-object p2, p0, Lhj/e;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lhj/e;->a:Ljava/util/Map;

    iget-object v1, p0, Lhj/e;->b:Ljava/lang/String;

    invoke-static {v0, v1}, Lhj/i;->f(Ljava/util/Map;Ljava/lang/String;)V

    return-void
.end method
