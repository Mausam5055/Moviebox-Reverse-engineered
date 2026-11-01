.class public Lcom/mbridge/msdk/tracker/i;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field static i:Ljava/lang/String; = "CREATE TABLE IF NOT EXISTS %s (id INTEGER PRIMARY KEY,uuid TEXT,name TEXT,type INTEGER,time_stamp INTEGER,duration INTEGER,properties TEXT,priority INTEGER,state INTEGER,invalid_time INTEGER,ignore_max_timeout INTEGER,ignore_max_retry_times INTEGER,report_error_message TEXT,report_count INTEGER)"

.field static j:Ljava/lang/String; = "DROP TABLE IF EXISTS %s"


# instance fields
.field private final a:Lcom/mbridge/msdk/tracker/e;

.field private b:I

.field private c:I

.field private final d:Ljava/lang/String;

.field private e:J

.field private f:Z

.field private g:Z

.field private h:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/mbridge/msdk/tracker/e;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mbridge/msdk/tracker/i;->f:Z

    iput-boolean v0, p0, Lcom/mbridge/msdk/tracker/i;->g:Z

    iput-object p1, p0, Lcom/mbridge/msdk/tracker/i;->a:Lcom/mbridge/msdk/tracker/e;

    invoke-virtual {p1}, Lcom/mbridge/msdk/tracker/e;->i()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/mbridge/msdk/tracker/i;->d:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a()Lcom/mbridge/msdk/tracker/e;
    .locals 1

    iget-object v0, p0, Lcom/mbridge/msdk/tracker/i;->a:Lcom/mbridge/msdk/tracker/e;

    return-object v0
.end method

.method public a(I)V
    .locals 0

    iput p1, p0, Lcom/mbridge/msdk/tracker/i;->b:I

    return-void
.end method

.method public a(J)V
    .locals 0

    iput-wide p1, p0, Lcom/mbridge/msdk/tracker/i;->e:J

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/mbridge/msdk/tracker/i;->h:Ljava/lang/String;

    return-void
.end method

.method public a(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/mbridge/msdk/tracker/i;->g:Z

    return-void
.end method

.method public b()J
    .locals 2

    iget-wide v0, p0, Lcom/mbridge/msdk/tracker/i;->e:J

    return-wide v0
.end method

.method public b(I)V
    .locals 0

    iput p1, p0, Lcom/mbridge/msdk/tracker/i;->c:I

    return-void
.end method

.method public b(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/mbridge/msdk/tracker/i;->f:Z

    return-void
.end method

.method public c()I
    .locals 1

    iget v0, p0, Lcom/mbridge/msdk/tracker/i;->b:I

    return v0
.end method

.method public d()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/mbridge/msdk/tracker/i;->h:Ljava/lang/String;

    return-object v0
.end method

.method public e()I
    .locals 1

    iget v0, p0, Lcom/mbridge/msdk/tracker/i;->c:I

    return v0
.end method

.method public f()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/mbridge/msdk/tracker/i;->d:Ljava/lang/String;

    return-object v0
.end method

.method public g()Z
    .locals 1

    iget-boolean v0, p0, Lcom/mbridge/msdk/tracker/i;->g:Z

    return v0
.end method

.method public h()Z
    .locals 1

    iget-boolean v0, p0, Lcom/mbridge/msdk/tracker/i;->f:Z

    return v0
.end method
