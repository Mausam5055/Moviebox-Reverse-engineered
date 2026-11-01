.class public final synthetic Le9/q;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/exoplayer2/util/r$a;


# instance fields
.field public final synthetic a:Le9/c$a;

.field public final synthetic b:Lt9/h;

.field public final synthetic c:Lt9/i;

.field public final synthetic d:Ljava/io/IOException;

.field public final synthetic e:Z


# direct methods
.method public synthetic constructor <init>(Le9/c$a;Lt9/h;Lt9/i;Ljava/io/IOException;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le9/q;->a:Le9/c$a;

    iput-object p2, p0, Le9/q;->b:Lt9/h;

    iput-object p3, p0, Le9/q;->c:Lt9/i;

    iput-object p4, p0, Le9/q;->d:Ljava/io/IOException;

    iput-boolean p5, p0, Le9/q;->e:Z

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)V
    .locals 6

    iget-object v0, p0, Le9/q;->a:Le9/c$a;

    iget-object v1, p0, Le9/q;->b:Lt9/h;

    iget-object v2, p0, Le9/q;->c:Lt9/i;

    iget-object v3, p0, Le9/q;->d:Ljava/io/IOException;

    iget-boolean v4, p0, Le9/q;->e:Z

    move-object v5, p1

    check-cast v5, Le9/c;

    invoke-static/range {v0 .. v5}, Le9/p1;->Z(Le9/c$a;Lt9/h;Lt9/i;Ljava/io/IOException;ZLe9/c;)V

    return-void
.end method
