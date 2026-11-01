.class public final synthetic Lhj/g;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Ljava/util/Map;

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lhj/g;->a:Ljava/util/Map;

    iput-object p2, p0, Lhj/g;->b:Ljava/lang/String;

    iput-object p3, p0, Lhj/g;->c:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lhj/g;->a:Ljava/util/Map;

    iget-object v1, p0, Lhj/g;->b:Ljava/lang/String;

    iget-object v2, p0, Lhj/g;->c:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lhj/i;->d(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
