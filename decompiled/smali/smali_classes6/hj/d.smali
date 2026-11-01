.class public final synthetic Lhj/d;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Ljava/util/Map;

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:Ljava/lang/String;

.field public final synthetic d:I

.field public final synthetic e:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lhj/d;->a:Ljava/util/Map;

    iput-object p2, p0, Lhj/d;->b:Ljava/lang/String;

    iput-object p3, p0, Lhj/d;->c:Ljava/lang/String;

    iput p4, p0, Lhj/d;->d:I

    iput-object p5, p0, Lhj/d;->e:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    iget-object v0, p0, Lhj/d;->a:Ljava/util/Map;

    iget-object v1, p0, Lhj/d;->b:Ljava/lang/String;

    iget-object v2, p0, Lhj/d;->c:Ljava/lang/String;

    iget v3, p0, Lhj/d;->d:I

    iget-object v4, p0, Lhj/d;->e:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3, v4}, Lhj/i;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method
