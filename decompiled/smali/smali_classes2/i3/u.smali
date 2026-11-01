.class public final synthetic Li3/u;
.super Ljava/lang/Object;

# interfaces
.implements Landroidx/media3/common/util/m;


# instance fields
.field public final synthetic a:Li3/v;

.field public final synthetic b:J

.field public final synthetic c:I


# direct methods
.method public synthetic constructor <init>(Li3/v;JI)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Li3/u;->a:Li3/v;

    iput-wide p2, p0, Li3/u;->b:J

    iput p4, p0, Li3/u;->c:I

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 4

    iget-object v0, p0, Li3/u;->a:Li3/v;

    iget-wide v1, p0, Li3/u;->b:J

    iget v3, p0, Li3/u;->c:I

    check-cast p1, Li3/e;

    invoke-static {v0, v1, v2, v3, p1}, Li3/v;->h(Li3/v;JILi3/e;)V

    return-void
.end method
