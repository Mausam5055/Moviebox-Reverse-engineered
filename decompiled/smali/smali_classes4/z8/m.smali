.class public final synthetic Lz8/m;
.super Ljava/lang/Object;

# interfaces
.implements Lb9/a$a;


# instance fields
.field public final synthetic a:Lz8/o;

.field public final synthetic b:Ljava/util/Map;


# direct methods
.method public synthetic constructor <init>(Lz8/o;Ljava/util/Map;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lz8/m;->a:Lz8/o;

    iput-object p2, p0, Lz8/m;->b:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public final execute()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lz8/m;->a:Lz8/o;

    iget-object v1, p0, Lz8/m;->b:Ljava/util/Map;

    invoke-static {v0, v1}, Lz8/o;->h(Lz8/o;Ljava/util/Map;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
