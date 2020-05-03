function [ai_1,zi_1]=g(thetai,ai)
	lenai_1=max(size(thetai(:,1)));
	numai_1=max(size(ai(:,1)));
	zi_1=zeros(numai_1,lenai_1);
	ai=[ones(numai_1,1) ai];
	for j=1:numai_1
		for i=1:lenai_1
			zi_1(j,i)=dot(ai(j,:),thetai(i,:));
		end
	end
	ai_1=(1+exp(-zi_1)).^-1;
end


