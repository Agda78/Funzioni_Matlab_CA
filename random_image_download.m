function random_image_download
    pythonScript = 'C:\Users\HP\Documents\Prova\S-MA-R-TLOTER_AI\Python\ImmaginiGettate\RandomGetting.py';
    cmd = sprintf('python %s', pythonScript);
    status = system(cmd);
    if status ~= 0
        error('Errore durante l''esecuzione del comando: %s', result);
    end
end