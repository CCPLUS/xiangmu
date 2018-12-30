<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
    <meta charset="UTF-8">
    <title>��������</title>
</head>
<body style="margin: 0 auto">
<canvas id='d1' width="600" height="700" style="left: 500px; border:dashed 2px #ccc;position:absolute;z-index:-2;filter: alpha(opacity:50);opacity: 0.5"></canvas>
<script>

    var drawtree = function (ctx, startx, starty, length, angle, depth, branchWidth) {
            var rand = Math.random,
                    n_length, n_angle, n_depth, maxbranch = 4,
                    endx, endy, maxangle = 2 * Math.PI / 4;
            var subbranch;
            ctx.beginPath();
            ctx.moveTo(startx, starty);
            endx = startx + length * Math.cos(angle);
            endy = starty + length * Math.sin(angle);
            ctx.lineCap = 'round';
            ctx.lineWidth = branchWidth;
            ctx.lineTo(endx, endy);
            if (depth <= 2) {
                //����֦��
                ctx.strokeStyle = 'rgb(0,' + (((rand() * 64) + 128) >> 0) + ',0)';
            }
            else {
                //����Ҷ��
                ctx.strokeStyle = 'rgb(0,' + (((rand() * 64) + 64) >> 0) + ',50,25)';
            }
            ctx.stroke();
            n_depth = depth - 1;
            //�ж����Ƿ����
            if (!n_depth) {
                return;
            }
            subbranch = (rand() * (maxbranch - 1)) + 1;
            branchWidth *= 0.5;
            for (var i = 0; i < subbranch; i++) {
                n_angle = angle + rand() * maxangle - maxangle * 0.5;
                n_length = length * (0.5 + rand() * 0.5);
                setTimeout(function () {
                    drawtree(ctx, endx, endy, n_length, n_angle, n_depth, branchWidth);
                    return;
                }, 500)
            }
        };

        var canvas1 = document.getElementById('d1');
        var context = canvas1.getContext('2d');
        //��ʼ������
        drawtree(context, 300, 700, 200, -Math.PI / 2, 12, 12);
        //context.fill();
        //document.getElementById('YST').style.backgroundImage = 'url("' + context.canvas.toDataURL() + '")';

</script>

<div id="YST" style="width:600px; height:700px;border:dashed 2px #ccc;text-align: center;left: 500px;position:absolute">
    <h2><a href="adminUser">�û�����</a><br><br>
<a href="getMyOrder">��������</a><br><br><a href="admin_jingdian.jsp">��������</a><br><br>
<a href="admin_jiudian.jsp">�����Ƶ�</a><br><br><a href="admin_meishi.jsp">������ʳ</a><br>
<br><hr></h2>
    <h2 style="color: red;">����Ա��֪</h2>
    <p align="center" style="color: red;font-size: 20px">���ڹ����м���ע������뵽����ʱ���£� <br>
1����Ҫ����[��ע��]��С���Ա�ͳ������˻ظ���ˮ������������С������ʱ���ã� <br>
2��ɾ���뾡������ϸע��ɾ�����ɣ��Է������Ͷ��ʱ���鲢��ʾ��ɾ������Աע�⣻ <br>
3�����������������ɾ��ԭ������ӣ��������Ա��˽�¶��ͽ��й�ͨ�����Ľ��͡�������Ҫ�����ڹ����ĳ��ܡ���������ȡ�֡�������������Ա�ɽ���ֱ�����÷���� <br>
4�����λ����Ա��Ҫ�����޸ġ�С����ܡ��µ����ݣ� <br>
5�����������С��ɾ��ָ�����±��涨��������Ĳ����� </p>
</div>
</body>

</html>
