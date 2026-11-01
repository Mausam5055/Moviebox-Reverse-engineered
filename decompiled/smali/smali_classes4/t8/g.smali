.class Lt8/g;
.super Ljava/lang/Object;


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Lc9/a;

.field private final c:Lc9/a;


# direct methods
.method constructor <init>(Landroid/content/Context;Lc9/a;Lc9/a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lt8/g;->a:Landroid/content/Context;

    iput-object p2, p0, Lt8/g;->b:Lc9/a;

    iput-object p3, p0, Lt8/g;->c:Lc9/a;

    return-void
.end method


# virtual methods
.method a(Ljava/lang/String;)Lt8/f;
    .locals 3

    iget-object v0, p0, Lt8/g;->a:Landroid/content/Context;

    iget-object v1, p0, Lt8/g;->b:Lc9/a;

    iget-object v2, p0, Lt8/g;->c:Lc9/a;

    invoke-static {v0, v1, v2, p1}, Lt8/f;->a(Landroid/content/Context;Lc9/a;Lc9/a;Ljava/lang/String;)Lt8/f;

    move-result-object p1

    return-object p1
.end method
