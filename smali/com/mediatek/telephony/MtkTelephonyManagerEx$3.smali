.class Lcom/mediatek/telephony/MtkTelephonyManagerEx$3;
.super Lcom/mediatek/telephony/IOemHookCallback$Stub;
.source "MtkTelephonyManagerEx.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mediatek/telephony/MtkTelephonyManagerEx;->sendAtCmd(IJLjava/lang/String;Landroid/os/Handler;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/mediatek/telephony/MtkTelephonyManagerEx;

.field final synthetic blacklist val$event_id:I

.field final synthetic blacklist val$h:Landroid/os/Handler;


# direct methods
.method constructor blacklist <init>(Lcom/mediatek/telephony/MtkTelephonyManagerEx;Landroid/os/Handler;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/mediatek/telephony/MtkTelephonyManagerEx;

    .line 1134
    iput-object p1, p0, Lcom/mediatek/telephony/MtkTelephonyManagerEx$3;->this$0:Lcom/mediatek/telephony/MtkTelephonyManagerEx;

    iput-object p2, p0, Lcom/mediatek/telephony/MtkTelephonyManagerEx$3;->val$h:Landroid/os/Handler;

    iput p3, p0, Lcom/mediatek/telephony/MtkTelephonyManagerEx$3;->val$event_id:I

    invoke-direct {p0}, Lcom/mediatek/telephony/IOemHookCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist onAtCmdResp(IJLjava/lang/String;)V
    .locals 3
    .param p1, "slotId"    # I
    .param p2, "token"    # J
    .param p4, "atCmd"    # Ljava/lang/String;

    .line 1137
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "sendAtCmd onAtCmdResp token="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MtkTelephonyManagerEx"

    invoke-static {v1, v0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1138
    iget-object v0, p0, Lcom/mediatek/telephony/MtkTelephonyManagerEx$3;->val$h:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 1139
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1140
    .local v0, "ret":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1141
    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1142
    invoke-virtual {v0, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1143
    iget-object v1, p0, Lcom/mediatek/telephony/MtkTelephonyManagerEx$3;->val$h:Landroid/os/Handler;

    iget v2, p0, Lcom/mediatek/telephony/MtkTelephonyManagerEx$3;->val$event_id:I

    invoke-virtual {v1, v2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 1144
    .local v1, "m":Landroid/os/Message;
    iget-object v2, p0, Lcom/mediatek/telephony/MtkTelephonyManagerEx$3;->val$h:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1145
    .end local v0    # "ret":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v1    # "m":Landroid/os/Message;
    goto :goto_0

    .line 1146
    :cond_0
    const-string v0, "sendAtCmd onAtCmdResp h == null"

    invoke-static {v1, v0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1148
    :goto_0
    return-void
.end method

.method public blacklist onAtUrcInd(ILjava/lang/String;)V
    .locals 0
    .param p1, "slotId"    # I
    .param p2, "atCmd"    # Ljava/lang/String;

    .line 1153
    return-void
.end method

.method public blacklist onError(Ljava/lang/String;)V
    .locals 3
    .param p1, "e"    # Ljava/lang/String;

    .line 1157
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "sendAtCmd onError "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MtkTelephonyManagerEx"

    invoke-static {v1, v0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1158
    iget-object v0, p0, Lcom/mediatek/telephony/MtkTelephonyManagerEx$3;->val$h:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 1159
    new-instance v0, Ljava/lang/Exception;

    invoke-direct {v0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 1160
    .local v0, "except":Ljava/lang/Exception;
    iget-object v1, p0, Lcom/mediatek/telephony/MtkTelephonyManagerEx$3;->val$h:Landroid/os/Handler;

    iget v2, p0, Lcom/mediatek/telephony/MtkTelephonyManagerEx$3;->val$event_id:I

    invoke-virtual {v1, v2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 1161
    .local v1, "m":Landroid/os/Message;
    iget-object v2, p0, Lcom/mediatek/telephony/MtkTelephonyManagerEx$3;->val$h:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1162
    .end local v0    # "except":Ljava/lang/Exception;
    .end local v1    # "m":Landroid/os/Message;
    goto :goto_0

    .line 1163
    :cond_0
    const-string v0, "sendAtCmd onError h == null"

    invoke-static {v1, v0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1165
    :goto_0
    return-void
.end method
