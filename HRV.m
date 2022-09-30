function edg
% file open
    [fname, pname] = uigetfile('*.txt','HRV 측정 data를 선택하세요');
    k = load([pname fname]);

%오류값 제거
    a=find(abs(k) > 300);
    k(a) = 0;

%Y index
    t = 1:length(k);
%Peak
    [~,locs_Rwave] = findpeaks(k,'MinPeakHeight',150,...
                                    'MinPeakDistance',100);
                              
%HRV 계산
    RLocsInterval = diff(locs_Rwave)/250;
    bpm = 60./RLocsInterval;
    
% Derive the HRV signal
    tHRV = (1/250) .* locs_Rwave(2:end);
    HRV = 1./RLocsInterval;
    %미측정값 제거
        b = find(RLocsInterval > 1.0);
        RLocsInterval(b) = mean(RLocsInterval);
     Fs = 1;   
     T = length(k)/250;
     L = length(k(locs_Rwave));
     timevector = (0:L-1)*T;
     PSD = fft(k(locs_Rwave));
     P2 = abs(PSD/L);
     P1 = P2(1:L/2+1);
     P1(2:end-1) = 2*P1(2:end-1);
     f = Fs*(0:(L/2))/L;
% %ECG
%     figure(1)
%     hold on
%     plot(f,P1);
    %plot(locs_Rwave,k(locs_Rwave),'rv','MarkerFaceColor','r')
    
% %ECG
%     figure(1)
%     subplot(4,1,2)
%     hold on
%     plot(t,k);
%     plot(locs_Rwave,k(locs_Rwave),'rv','MarkerFaceColor','r')
%     
% %HRV
%     subplot(4,1,3)
%     plot(tHRV,bpm)
%     hold on
%     ylabel('HR')
%     xlabel('Time[sec]');
%     grid on;
    
%     subplot(4,1,4)
    plomb(HRV,tHRV,'Pd',[0.95, 0.5])
    grid on;