.class public Lcom/mbridge/msdk/mbsignalcommon/commonwebview/ToolBar$b;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mbridge/msdk/mbsignalcommon/commonwebview/ToolBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public c:Z

.field public d:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mbridge/msdk/mbsignalcommon/commonwebview/ToolBar$b;->c:Z

    iput-object p1, p0, Lcom/mbridge/msdk/mbsignalcommon/commonwebview/ToolBar$b;->a:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View$OnClickListener;)Lcom/mbridge/msdk/mbsignalcommon/commonwebview/ToolBar$b;
    .locals 0

    iput-object p1, p0, Lcom/mbridge/msdk/mbsignalcommon/commonwebview/ToolBar$b;->d:Landroid/view/View$OnClickListener;

    return-object p0
.end method

.method public a(Ljava/lang/String;)Lcom/mbridge/msdk/mbsignalcommon/commonwebview/ToolBar$b;
    .locals 0

    iput-object p1, p0, Lcom/mbridge/msdk/mbsignalcommon/commonwebview/ToolBar$b;->b:Ljava/lang/String;

    return-object p0
.end method

.method public a(Z)Lcom/mbridge/msdk/mbsignalcommon/commonwebview/ToolBar$b;
    .locals 0

    iput-boolean p1, p0, Lcom/mbridge/msdk/mbsignalcommon/commonwebview/ToolBar$b;->c:Z

    return-object p0
.end method
