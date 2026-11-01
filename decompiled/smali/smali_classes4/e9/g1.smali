.class public final synthetic Le9/g1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/exoplayer2/util/r$a;


# instance fields
.field public final synthetic a:Le9/c$a;

.field public final synthetic b:Lt9/h;

.field public final synthetic c:Lt9/i;


# direct methods
.method public synthetic constructor <init>(Le9/c$a;Lt9/h;Lt9/i;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le9/g1;->a:Le9/c$a;

    iput-object p2, p0, Le9/g1;->b:Lt9/h;

    iput-object p3, p0, Le9/g1;->c:Lt9/i;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)V
    .locals 3

    iget-object v0, p0, Le9/g1;->a:Le9/c$a;

    iget-object v1, p0, Le9/g1;->b:Lt9/h;

    iget-object v2, p0, Le9/g1;->c:Lt9/i;

    check-cast p1, Le9/c;

    invoke-static {v0, v1, v2, p1}, Le9/p1;->K(Le9/c$a;Lt9/h;Lt9/i;Le9/c;)V

    return-void
.end method
