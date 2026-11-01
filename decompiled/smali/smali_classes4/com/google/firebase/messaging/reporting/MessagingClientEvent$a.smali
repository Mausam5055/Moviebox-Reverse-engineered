.class public final Lcom/google/firebase/messaging/reporting/MessagingClientEvent$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firebase/messaging/reporting/MessagingClientEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field private a:J

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Lcom/google/firebase/messaging/reporting/MessagingClientEvent$MessageType;

.field private e:Lcom/google/firebase/messaging/reporting/MessagingClientEvent$SDKPlatform;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:I

.field private i:I

.field private j:Ljava/lang/String;

.field private k:J

.field private l:Lcom/google/firebase/messaging/reporting/MessagingClientEvent$Event;

.field private m:Ljava/lang/String;

.field private n:J

.field private o:Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/firebase/messaging/reporting/MessagingClientEvent$a;->a:J

    const-string v2, ""

    iput-object v2, p0, Lcom/google/firebase/messaging/reporting/MessagingClientEvent$a;->b:Ljava/lang/String;

    iput-object v2, p0, Lcom/google/firebase/messaging/reporting/MessagingClientEvent$a;->c:Ljava/lang/String;

    sget-object v3, Lcom/google/firebase/messaging/reporting/MessagingClientEvent$MessageType;->UNKNOWN:Lcom/google/firebase/messaging/reporting/MessagingClientEvent$MessageType;

    iput-object v3, p0, Lcom/google/firebase/messaging/reporting/MessagingClientEvent$a;->d:Lcom/google/firebase/messaging/reporting/MessagingClientEvent$MessageType;

    sget-object v3, Lcom/google/firebase/messaging/reporting/MessagingClientEvent$SDKPlatform;->UNKNOWN_OS:Lcom/google/firebase/messaging/reporting/MessagingClientEvent$SDKPlatform;

    iput-object v3, p0, Lcom/google/firebase/messaging/reporting/MessagingClientEvent$a;->e:Lcom/google/firebase/messaging/reporting/MessagingClientEvent$SDKPlatform;

    iput-object v2, p0, Lcom/google/firebase/messaging/reporting/MessagingClientEvent$a;->f:Ljava/lang/String;

    iput-object v2, p0, Lcom/google/firebase/messaging/reporting/MessagingClientEvent$a;->g:Ljava/lang/String;

    const/4 v3, 0x0

    iput v3, p0, Lcom/google/firebase/messaging/reporting/MessagingClientEvent$a;->h:I

    iput v3, p0, Lcom/google/firebase/messaging/reporting/MessagingClientEvent$a;->i:I

    iput-object v2, p0, Lcom/google/firebase/messaging/reporting/MessagingClientEvent$a;->j:Ljava/lang/String;

    iput-wide v0, p0, Lcom/google/firebase/messaging/reporting/MessagingClientEvent$a;->k:J

    sget-object v3, Lcom/google/firebase/messaging/reporting/MessagingClientEvent$Event;->UNKNOWN_EVENT:Lcom/google/firebase/messaging/reporting/MessagingClientEvent$Event;

    iput-object v3, p0, Lcom/google/firebase/messaging/reporting/MessagingClientEvent$a;->l:Lcom/google/firebase/messaging/reporting/MessagingClientEvent$Event;

    iput-object v2, p0, Lcom/google/firebase/messaging/reporting/MessagingClientEvent$a;->m:Ljava/lang/String;

    iput-wide v0, p0, Lcom/google/firebase/messaging/reporting/MessagingClientEvent$a;->n:J

    iput-object v2, p0, Lcom/google/firebase/messaging/reporting/MessagingClientEvent$a;->o:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a()Lcom/google/firebase/messaging/reporting/MessagingClientEvent;
    .locals 24

    move-object/from16 v0, p0

    new-instance v20, Lcom/google/firebase/messaging/reporting/MessagingClientEvent;

    move-object/from16 v1, v20

    iget-wide v2, v0, Lcom/google/firebase/messaging/reporting/MessagingClientEvent$a;->a:J

    iget-object v4, v0, Lcom/google/firebase/messaging/reporting/MessagingClientEvent$a;->b:Ljava/lang/String;

    iget-object v5, v0, Lcom/google/firebase/messaging/reporting/MessagingClientEvent$a;->c:Ljava/lang/String;

    iget-object v6, v0, Lcom/google/firebase/messaging/reporting/MessagingClientEvent$a;->d:Lcom/google/firebase/messaging/reporting/MessagingClientEvent$MessageType;

    iget-object v7, v0, Lcom/google/firebase/messaging/reporting/MessagingClientEvent$a;->e:Lcom/google/firebase/messaging/reporting/MessagingClientEvent$SDKPlatform;

    iget-object v8, v0, Lcom/google/firebase/messaging/reporting/MessagingClientEvent$a;->f:Ljava/lang/String;

    iget-object v9, v0, Lcom/google/firebase/messaging/reporting/MessagingClientEvent$a;->g:Ljava/lang/String;

    iget v10, v0, Lcom/google/firebase/messaging/reporting/MessagingClientEvent$a;->h:I

    iget v11, v0, Lcom/google/firebase/messaging/reporting/MessagingClientEvent$a;->i:I

    iget-object v12, v0, Lcom/google/firebase/messaging/reporting/MessagingClientEvent$a;->j:Ljava/lang/String;

    iget-wide v13, v0, Lcom/google/firebase/messaging/reporting/MessagingClientEvent$a;->k:J

    iget-object v15, v0, Lcom/google/firebase/messaging/reporting/MessagingClientEvent$a;->l:Lcom/google/firebase/messaging/reporting/MessagingClientEvent$Event;

    move-object/from16 v21, v1

    iget-object v1, v0, Lcom/google/firebase/messaging/reporting/MessagingClientEvent$a;->m:Ljava/lang/String;

    move-object/from16 v16, v1

    move-wide/from16 v22, v2

    iget-wide v1, v0, Lcom/google/firebase/messaging/reporting/MessagingClientEvent$a;->n:J

    move-wide/from16 v17, v1

    iget-object v1, v0, Lcom/google/firebase/messaging/reporting/MessagingClientEvent$a;->o:Ljava/lang/String;

    move-object/from16 v19, v1

    move-object/from16 v1, v21

    move-wide/from16 v2, v22

    invoke-direct/range {v1 .. v19}, Lcom/google/firebase/messaging/reporting/MessagingClientEvent;-><init>(JLjava/lang/String;Ljava/lang/String;Lcom/google/firebase/messaging/reporting/MessagingClientEvent$MessageType;Lcom/google/firebase/messaging/reporting/MessagingClientEvent$SDKPlatform;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;JLcom/google/firebase/messaging/reporting/MessagingClientEvent$Event;Ljava/lang/String;JLjava/lang/String;)V

    return-object v20
.end method

.method public b(Ljava/lang/String;)Lcom/google/firebase/messaging/reporting/MessagingClientEvent$a;
    .locals 0

    iput-object p1, p0, Lcom/google/firebase/messaging/reporting/MessagingClientEvent$a;->m:Ljava/lang/String;

    return-object p0
.end method

.method public c(Ljava/lang/String;)Lcom/google/firebase/messaging/reporting/MessagingClientEvent$a;
    .locals 0

    iput-object p1, p0, Lcom/google/firebase/messaging/reporting/MessagingClientEvent$a;->g:Ljava/lang/String;

    return-object p0
.end method

.method public d(Ljava/lang/String;)Lcom/google/firebase/messaging/reporting/MessagingClientEvent$a;
    .locals 0

    iput-object p1, p0, Lcom/google/firebase/messaging/reporting/MessagingClientEvent$a;->o:Ljava/lang/String;

    return-object p0
.end method

.method public e(Lcom/google/firebase/messaging/reporting/MessagingClientEvent$Event;)Lcom/google/firebase/messaging/reporting/MessagingClientEvent$a;
    .locals 0

    iput-object p1, p0, Lcom/google/firebase/messaging/reporting/MessagingClientEvent$a;->l:Lcom/google/firebase/messaging/reporting/MessagingClientEvent$Event;

    return-object p0
.end method

.method public f(Ljava/lang/String;)Lcom/google/firebase/messaging/reporting/MessagingClientEvent$a;
    .locals 0

    iput-object p1, p0, Lcom/google/firebase/messaging/reporting/MessagingClientEvent$a;->c:Ljava/lang/String;

    return-object p0
.end method

.method public g(Ljava/lang/String;)Lcom/google/firebase/messaging/reporting/MessagingClientEvent$a;
    .locals 0

    iput-object p1, p0, Lcom/google/firebase/messaging/reporting/MessagingClientEvent$a;->b:Ljava/lang/String;

    return-object p0
.end method

.method public h(Lcom/google/firebase/messaging/reporting/MessagingClientEvent$MessageType;)Lcom/google/firebase/messaging/reporting/MessagingClientEvent$a;
    .locals 0

    iput-object p1, p0, Lcom/google/firebase/messaging/reporting/MessagingClientEvent$a;->d:Lcom/google/firebase/messaging/reporting/MessagingClientEvent$MessageType;

    return-object p0
.end method

.method public i(Ljava/lang/String;)Lcom/google/firebase/messaging/reporting/MessagingClientEvent$a;
    .locals 0

    iput-object p1, p0, Lcom/google/firebase/messaging/reporting/MessagingClientEvent$a;->f:Ljava/lang/String;

    return-object p0
.end method

.method public j(I)Lcom/google/firebase/messaging/reporting/MessagingClientEvent$a;
    .locals 0

    iput p1, p0, Lcom/google/firebase/messaging/reporting/MessagingClientEvent$a;->h:I

    return-object p0
.end method

.method public k(J)Lcom/google/firebase/messaging/reporting/MessagingClientEvent$a;
    .locals 0

    iput-wide p1, p0, Lcom/google/firebase/messaging/reporting/MessagingClientEvent$a;->a:J

    return-object p0
.end method

.method public l(Lcom/google/firebase/messaging/reporting/MessagingClientEvent$SDKPlatform;)Lcom/google/firebase/messaging/reporting/MessagingClientEvent$a;
    .locals 0

    iput-object p1, p0, Lcom/google/firebase/messaging/reporting/MessagingClientEvent$a;->e:Lcom/google/firebase/messaging/reporting/MessagingClientEvent$SDKPlatform;

    return-object p0
.end method

.method public m(Ljava/lang/String;)Lcom/google/firebase/messaging/reporting/MessagingClientEvent$a;
    .locals 0

    iput-object p1, p0, Lcom/google/firebase/messaging/reporting/MessagingClientEvent$a;->j:Ljava/lang/String;

    return-object p0
.end method

.method public n(I)Lcom/google/firebase/messaging/reporting/MessagingClientEvent$a;
    .locals 0

    iput p1, p0, Lcom/google/firebase/messaging/reporting/MessagingClientEvent$a;->i:I

    return-object p0
.end method
